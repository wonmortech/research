# Honest evaluation for transliteration: why our score went down from 99.17% to 98.87%

Post: <https://wonmor.io/research/honest-transliteration-eval/>  
Kind: research · Area: language · Published: 2026-11-12

## What can be reproduced

The first three commands give 2966/3000, 2436/3000 and 2992/3000 on main; the last two rebuild the lexicon from before the fix and give 2975/3000 (99.17%) on the same sentences.

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
cargo build --release -p bitg-cli
target/release/bitg eval eval/uz.tsv
target/release/bitg eval eval/uz_noapos.tsv && target/release/bitg eval eval/en.tsv
git checkout a7962ef -- crates Cargo.toml Cargo.lock
cargo build --release -p bitg-cli && target/release/bitg eval eval/uz.tsv
```

## Sources cited in the post

- <https://github.com/dtwinuz/bitg/commit/b3102bc0f4127e8ccb9f05a21a76cce20275353e>
- <https://github.com/dtwinuz/bitg/pull/8>
- dtwinuz/bitg eval/README.md
- dtwinuz/bitg README.md (sections Sifat, Lug'at)

## Licence

Text in this folder: CC BY 4.0. Commands and query files: MIT. See the repository README.
