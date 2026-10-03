#!/usr/bin/env bash
set -euo pipefail
repo=doomerlabs/homebrew-tap
branch="${RELEASE_BRANCH:?RELEASE_BRANCH is required}"
sha="${RELEASE_SHA:?RELEASE_SHA is required}"
tag="${branch#release/doomer-}"
[[ "$branch" == release/doomer-* && "$sha" =~ ^[0-9a-f]{40}$ ]] || { echo 'Invalid release branch or commit' >&2; exit 1; }
pr="$(gh pr list --repo "$repo" --head "$branch" --base main --state all --json url --jq '.[0].url // empty')"
if [[ -z "$pr" ]]; then
  body="$(mktemp)"
  trap 'rm -f -- "$body"' EXIT
  printf 'Publish the verified formula from https://github.com/doomerlabs/doomer/releases/tag/%s.\n\nDepot verified the exact published formula bytes, manifest, checksums, and release branch. Merge only after required review/checks pass.\n' "$tag" >"$body"
  pr="$(gh pr create --repo "$repo" --head "$branch" --base main --title "Update doomer to $tag" --body-file "$body")"
fi
printf 'Homebrew release PR: %s\n' "$pr"
for attempt in $(seq 1 40); do
  state="$(gh pr view "$pr" --repo "$repo" --json state --jq '.state')"
  if [[ "$state" == MERGED ]]; then
    [[ "$(gh pr view "$pr" --repo "$repo" --json headRefOid --jq '.headRefOid')" == "$sha" ]] || { echo 'Merged release commit changed' >&2; exit 1; }
    printf 'Published %s through %s\n' "$tag" "$pr"
    exit 0
  fi
  [[ "$state" == OPEN ]] || { echo "Release PR was closed without publishing: $pr" >&2; exit 1; }
  [[ "$(gh pr view "$pr" --repo "$repo" --json headRefOid --jq '.headRefOid')" == "$sha" ]] || { echo 'Release PR commit changed' >&2; exit 1; }
  review="$(gh pr view "$pr" --repo "$repo" --json reviewDecision --jq '.reviewDecision')"
  if [[ "$review" == APPROVED ]]; then
    # GitHub still enforces required checks and branch protection. The reviewer
    # may also merge first, so an ordinary merge failure is retried safely.
    gh pr merge "$pr" --repo "$repo" --merge --match-head-commit "$sha" || true
  fi
  if [[ "$attempt" != 40 ]]; then sleep 15; fi
done
printf 'Timed out waiting for required review/checks on %s\n' "$pr" >&2
exit 1
