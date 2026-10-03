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
