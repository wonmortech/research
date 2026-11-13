#!/usr/bin/env bash
# Reproduce commands for: From zero to OpenSSF gold in under two days
# Source: https://wonmor.io/engineering/openssf-gold-in-two-days/
# Copied verbatim from the post. Run line by line; see README.md for the required checkout.

curl -s https://www.bestpractices.dev/projects/16620.json | jq '.badge_level, .achieved_passing_at, .achieved_silver_at, .achieved_gold_at'
curl -s https://api.securityscorecards.dev/projects/github.com/dtwinuz/bitg | jq '.score, (.checks[] | {name, score})'
gh release download v0.3.1 -R dtwinuz/bitg -p 'bitg_0.3.1_amd64.deb' && gh attestation verify bitg_0.3.1_amd64.deb -R dtwinuz/bitg
