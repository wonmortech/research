#!/usr/bin/env bash
# Reproduce commands for: Lighthouse 55 → 100 without losing the wow
# Source: https://wonmor.io/engineering/lighthouse-55-to-100/
# Copied verbatim from the post. Run line by line; see README.md for the required checkout.

git clone https://github.com/dtwinuz/halvet && cd halvet && git checkout f0739fe
npx serve v1
npx lighthouse http://localhost:3000 --only-categories=performance --form-factor=mobile
git checkout 432e50f   # v1, the 55 baseline, for comparison
