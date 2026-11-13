# From zero to OpenSSF gold in under two days

Post: <https://wonmor.io/engineering/openssf-gold-in-two-days/>  
Kind: engineering · Area: supply-chain · Published: 2026-11-13

## What can be reproduced

The first command prints the badge level and the three timestamps; the second prints the current Scorecard score; the third verifies a released package against its signed provenance.

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
curl -s https://www.bestpractices.dev/projects/16620.json | jq '.badge_level, .achieved_passing_at, .achieved_silver_at, .achieved_gold_at'
curl -s https://api.securityscorecards.dev/projects/github.com/dtwinuz/bitg | jq '.score, (.checks[] | {name, score})'
gh release download v0.3.1 -R dtwinuz/bitg -p 'bitg_0.3.1_amd64.deb' && gh attestation verify bitg_0.3.1_amd64.deb -R dtwinuz/bitg
```

## Sources cited in the post

- <https://www.bestpractices.dev/projects/16620>
- <https://www.bestpractices.dev/projects/16620.json>
- <https://api.securityscorecards.dev/projects/github.com/dtwinuz/bitg>
- <https://github.com/dtwinuz/bitg/pulls?q=is%3Apr+is%3Amerged>
- dtwinuz/bitg GOVERNANCE.md, docs/ASSURANCE.md, CHANGELOG.md

## Licence

Text in this folder: CC BY 4.0. Commands and query files: MIT. See the repository README.
