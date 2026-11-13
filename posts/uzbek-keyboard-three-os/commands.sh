#!/usr/bin/env bash
# Reproduce commands for: Building an Uzbek keyboard for three operating systems
# Source: https://wonmor.io/research/uzbek-keyboard-three-os/
# Copied verbatim from the post. Run line by line; see README.md for the required checkout.

cargo run -q --release -p bitg-cli -- "Menga chat yozing. Menga choy yozing."
cargo test -p bitg-ime wants_before
cargo test -p bitg-core
