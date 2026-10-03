# Doomer Homebrew tap

Install the Doomer CLI:

```sh
brew install doomerlabs/tap/doomer
doomer --version
```

Formula updates are published by the [Doomer release workflow](https://github.com/doomerlabs/doomer/releases). The former `adversary` and `adversary-beta` formulas have been removed; no compatibility aliases are provided.

Depot publishes release branches (`release/doomer-TAG`) automatically. Its
`publish-formula` workflow verifies the formula against the public release
asset and checksums, opens the formula PR, and merges after the required review
and checks pass. The Doomer automated reviewer provides approval; branch
protection remains enforced. The CLI release job waits for the exact formula
to reach `main`, so a green release means Homebrew publication is complete.

The workflow's `github.token` is issued by the Depot Code Access GitHub App,
not GitHub Actions. [Depot documents its App token and supported permissions](https://depot.dev/docs/ci/compatibility#permissions).
Creating the PR with this tap-scoped App token delivers normal PR events to
Depot CI and the Doomer reviewer without expanding the CLI's Contents-only PAT.
Before each merge attempt, the publisher fetches current `main` and repeats
release verification, including the downgrade guard.
