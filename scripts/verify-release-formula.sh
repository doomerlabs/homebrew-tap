#!/usr/bin/env bash
set -euo pipefail
branch="${RELEASE_BRANCH:?RELEASE_BRANCH is required}"
sha="${RELEASE_SHA:?RELEASE_SHA is required}"
[[ "$branch" == release/doomer-* ]] || { echo 'Unexpected release branch' >&2; exit 1; }
tag="${branch#release/doomer-}"
[[ "$tag" =~ ^20[0-9]{2}\.[0-9]{1,2}\.[0-9]{1,2}(-[0-9A-Za-z][0-9A-Za-z.-]*)?$ ]] || { echo 'Invalid release tag' >&2; exit 1; }
[[ "$sha" =~ ^[0-9a-f]{40}$ ]] || { echo 'Invalid release commit' >&2; exit 1; }
formula=doomer.rb
[[ "$tag" != *-* ]] || formula=doomer-beta.rb
git fetch origin "$sha"
[[ "$(git rev-parse FETCH_HEAD)" == "$sha" ]] || { echo 'Release commit changed' >&2; exit 1; }
base="$(git merge-base HEAD "$sha")"
# A retried webhook may start after its PR has already merged. In that case,
# inspect the original formula commit instead of treating its empty diff as invalid.
if [[ "$base" == "$sha" ]]; then base="$(git rev-parse "$sha^")"; fi
[[ "$(git diff --name-only "$base" "$sha")" == "Formula/$formula" ]] || { echo 'Release branch must change exactly its formula' >&2; exit 1; }
[[ "$(git ls-tree "$sha" "Formula/$formula" | awk '{print $1}')" == 100644 ]] || { echo 'Formula must be a regular file' >&2; exit 1; }
scratch="$(mktemp -d)"
trap 'rm -rf -- "$scratch"' EXIT
git show "$sha:Formula/$formula" >"$scratch/proposed.rb"
git show "HEAD:Formula/$formula" >"$scratch/current.rb"
for file in "$formula" checksums.txt release-manifest.json; do
  curl --fail --location --silent --show-error --retry 3 --max-time 120 \
    "https://github.com/doomerlabs/doomer/releases/download/$tag/$file" -o "$scratch/$file"
done
python3 scripts/verify_formula.py "$tag" "$formula" "$scratch"
ruby -c "$scratch/proposed.rb"
printf 'Verified formula for %s at %s\n' "$tag" "$sha"
