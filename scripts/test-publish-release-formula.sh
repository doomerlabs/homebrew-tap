#!/usr/bin/env bash
set -euo pipefail
root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
scratch="$(mktemp -d)"
trap 'rm -rf -- "$scratch"' EXIT
cat >"$scratch/gh" <<'FAKE'
#!/bin/sh
printf '%s\n' "$*" >>"$TEST_LOG"
case "$1 $2" in
  'pr list') if [ "$SCENARIO" != fresh ]; then printf 'https://github.com/doomerlabs/homebrew-tap/pull/99\n'; fi ;;
  'pr create') printf 'https://github.com/doomerlabs/homebrew-tap/pull/99\n' ;;
  'pr view')
    case "$*" in
      *'--json state'*)
        if [ "$SCENARIO" = merged ] || [ -f "$TEST_MERGED" ]; then printf 'MERGED\n'
        elif [ "$SCENARIO" = closed ]; then printf 'CLOSED\n'
        else printf 'OPEN\n'; fi
        ;;
      *'--json headRefOid'*) if [ "$SCENARIO" = changed ]; then printf '%040d\n' 1; else printf '%s\n' "$RELEASE_SHA"; fi ;;
      *'--json reviewDecision'*) if [ "$SCENARIO" = timeout ]; then printf 'REVIEW_REQUIRED\n'; else printf 'APPROVED\n'; fi ;;
    esac
    ;;
  'pr merge') : >"$TEST_MERGED" ;;
  *) exit 1 ;;
esac
FAKE
printf '%s\n' '#!/bin/sh' 'exit 0' >"$scratch/sleep"
chmod +x "$scratch/gh" "$scratch/sleep"
mkdir -p "$scratch/tooling/scripts"
cp "$root/scripts/publish-release-formula.sh" "$scratch/tooling/scripts/"
cat >"$scratch/tooling/scripts/verify-release-formula.sh" <<'VERIFY'
#!/bin/sh
printf 'verify %s\n' "$VERIFY_CURRENT_REF" >>"$TEST_LOG"
[ "$SCENARIO" != stale ]
VERIFY
cat >"$scratch/git" <<'GIT'
#!/bin/sh
printf 'git %s\n' "$*" >>"$TEST_LOG"
GIT
chmod +x "$scratch/git" "$scratch/tooling/scripts/verify-release-formula.sh"
cd "$scratch/tooling"
export RELEASE_BRANCH=release/doomer-2026.10.1 RELEASE_SHA=aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
export TEST_LOG="$scratch/log" TEST_MERGED="$scratch/merged" GH_TOKEN=test-token
for scenario in fresh resumed merged; do
  export SCENARIO="$scenario"
  : >"$TEST_LOG"; rm -f "$TEST_MERGED"
  PATH="$scratch:$PATH" bash scripts/publish-release-formula.sh >/dev/null
  if [[ "$scenario" == fresh ]]; then grep -Fq 'pr create' "$TEST_LOG"; elif grep -Fq 'pr create' "$TEST_LOG"; then echo 'Retry created another PR' >&2; exit 1; fi
  if [[ "$scenario" != merged ]]; then
    grep -Fq 'git fetch origin main:refs/remotes/origin/main' "$TEST_LOG"
    grep -Fq 'verify refs/remotes/origin/main' "$TEST_LOG"
  fi
  if grep -Eq -- '--admin|--auto'  "$TEST_LOG"; then echo 'Publisher bypassed protection' >&2; exit 1; fi
done
for scenario in closed changed timeout stale; do
  export SCENARIO="$scenario"
  : >"$TEST_LOG"; rm -f "$TEST_MERGED"
  if PATH="$scratch:$PATH" bash scripts/publish-release-formula.sh >/dev/null 2>&1; then echo "Publisher accepted $scenario" >&2; exit 1; fi
  if grep -Fq 'pr merge' "$TEST_LOG"; then echo "Publisher merged $scenario" >&2; exit 1; fi
done
echo 'Tap publication contract passed'
