# Building an Uzbek keyboard for three operating systems

Post: <https://wonmor.io/research/uzbek-keyboard-three-os/>  
Kind: research · Area: language · Published: 2026-11-12

## What can be reproduced

The first command converts a mixed sentence with the same core the input methods use; the second runs the test that proves the macOS and Linux shells ask the application for text only when the engine needs it.

## Pinned source

- Repository: <https://github.com/dtwinuz/bitg> (public)
- Commit: `2de5c94`

Run the commands from a checkout of that repository at that commit unless a command clones it for you:

```bash
git clone https://github.com/dtwinuz/bitg && cd bitg && git checkout 2de5c94
```

## Commands

Copied verbatim from the post's *Reproduce this* box. Also saved as [`commands.sh`](commands.sh); run the lines one at a time, since some start a server or need a specific checkout.

```bash
cargo run -q --release -p bitg-cli -- "Menga chat yozing. Menga choy yozing."
cargo test -p bitg-ime wants_before
cargo test -p bitg-core
```

## Sources cited in the post

- <https://github.com/dtwinuz/bitg>
- dtwinuz/bitg ARCHITECTURE.md, CHANGELOG.md
- <https://github.com/dtwinuz/bitg/pull/2>
- <https://github.com/dtwinuz/bitg/pull/7>
- <https://github.com/dtwinuz/bitg/pull/9>
- <https://github.com/dtwinuz/bitg/pull/30>
- <https://github.com/dtwinuz/bitg/releases>

## Licence

Text in this folder: CC BY 4.0. Commands and query files: MIT. See the repository README.
