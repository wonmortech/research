#!/usr/bin/env bash
# Reproduce commands for: Honest evaluation for transliteration: why our score went down from 99.17% to 98.87%
# Source: https://wonmor.io/research/honest-transliteration-eval/
# Copied verbatim from the post. Run line by line; see README.md for the required checkout.

cargo build --release -p bitg-cli
target/release/bitg eval eval/uz.tsv
target/release/bitg eval eval/uz_noapos.tsv && target/release/bitg eval eval/en.tsv
git checkout a7962ef -- crates Cargo.toml Cargo.lock
cargo build --release -p bitg-cli && target/release/bitg eval eval/uz.tsv
