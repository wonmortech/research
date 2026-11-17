# research

Reproducible commands and sources behind 15 posts on [wonmor.io/research](https://wonmor.io/research/): one folder per post, with the exact commands and the commit they run against.

[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/wonmortech/research/badge)](https://scorecard.dev/viewer/?uri=github.com/wonmortech/research)
![code: MIT](https://img.shields.io/badge/code-MIT-141413)
![text: CC BY 4.0](https://img.shields.io/badge/text-CC%20BY%204.0-141413)

**[Website](https://wonmor.io) · [Research](https://wonmor.io/research/) · [Engineering](https://wonmor.io/engineering/)**

## What it is

- **One folder per post.** `README.md` with the title, the post link, what can be reproduced, the exact commands and the sources the post cites.
- **Verbatim commands.** `commands.sh` holds the post's *Reproduce this* box, copied as it is.
- **Full queries and scripts.** Any complete query or script in a post is here too, for example `query.overpassql` for the mosques post.
- **Pinned commits.** Where a post uses a public repository, the README names it and the exact commit.
- **Honest about private code.** Where the code behind a post is private, the README says so and lists only what can be checked from public sources.

Some posts have a public result you can open right away:

| | |
|---|---|
| [![uz-open-data explorer](https://raw.githubusercontent.com/wonmortech/uz-open-data/main/docs/screenshots/map.jpg)](https://wonmor.io/demo/uz-open-data/) | [![deploy-kit: one deploy in eight steps](https://raw.githubusercontent.com/wonmortech/deploy-kit/main/docs/how-it-works.svg)](https://github.com/wonmortech/deploy-kit) |
| **Mosques from OpenStreetMap.** The dataset is in [uz-open-data](https://github.com/wonmortech/uz-open-data); explore it in the [live demo](https://wonmor.io/demo/uz-open-data/). | **Zero-downtime static deploys.** The flow, generalised, is [deploy-kit](https://github.com/wonmortech/deploy-kit). |

## Quick start

```bash
git clone https://github.com/wonmortech/research && cd research
cat posts/mosques-from-openstreetmap/README.md
bash posts/mosques-from-openstreetmap/commands.sh   # or run the lines one at a time
```

Some lines start a server or need a specific checkout; the folder README says which.

## Index

| Post | Area | Published | What is reproducible |
|---|---|---|---|
| [Zero-downtime static deploys with Caddy](posts/zero-downtime-static-deploys/) | infrastructure | 2026-11-13 | Runnable against public repo at `592b4a4` |
| [Reproducible MSI and .pkg builds, and the timestamp traps inside](posts/reproducible-msi-pkg/) | supply-chain | 2026-11-13 | Runnable against public repo at `2de5c94` |
| [From zero to OpenSSF gold in under two days](posts/openssf-gold-in-two-days/) | supply-chain | 2026-11-13 | Runnable against public repo at `2de5c94` |
| [Making a brand film from code](posts/brand-film-from-code/) | interfaces | 2026-11-13 | Inspect the published film with ffprobe |
| [Building an Uzbek keyboard for three operating systems](posts/uzbek-keyboard-three-os/) | language | 2026-11-12 | Runnable against public repo at `2de5c94` |
| [Honest evaluation for transliteration: why our score went down from 99.17% to 98.87%](posts/honest-transliteration-eval/) | language | 2026-11-12 | Runnable against public repo at `2de5c94` |
| [Telegram HTML widgets in production](posts/telegram-html-widgets/) | interfaces | 2026-11-10 | Public commands; core code private |
| [Lighthouse 55 → 100 without losing the wow](posts/lighthouse-55-to-100/) | interfaces | 2026-11-09 | Runnable against public repo at `f0739fe` |
| [Should a community app have a token? (ADR-0002)](posts/should-a-community-app-have-a-token/) | digital-assets | 2026-11-02 | Sources only; decision record private |
| [Building a self-hosted tunnel](posts/self-hosted-tunnel/) | infrastructure | 2026-11-02 | Public commands; core code private |
| [An MCP gateway for AI agents: tokens, masking, audit, kill-switch](posts/mcp-gateway-for-agents/) | agents | 2026-11-02 | Public commands; core code private |
| [Mosques from OpenStreetMap: 2,285 congregations, one layer](posts/mosques-from-openstreetmap/) | faith-society | 2026-10-27 | Full Overpass query + count command |
| [Multi-agent orchestration in practice](posts/multi-agent-orchestration/) | agents | 2026-10-26 | Public commands; core code private |
| [A personal life OS with an MCP server](posts/life-os-with-mcp/) | faith-society | 2026-10-26 | Public commands; core code private |
| [Controlling Claude Code from Telegram](posts/claude-code-from-telegram/) | agents | 2026-10-21 | Public commands; core code private |

## Expect drift

Commands that read live services (Overpass, OpenSSF Best Practices, OpenSSF Scorecard, Lighthouse) return today's values, not the values on the day the post was written. Pinned commits make the repository side stable; the live side will move. The posts say which numbers are snapshots.

## Contributing

If a command no longer works, or gives a different result for a reason the post does not explain, please open an issue with the command, the output and the date you ran it.

## Licence

- **Code** (commands, scripts, query files): [MIT](LICENSE).
- **Text** (the READMEs and any prose): [Creative Commons Attribution 4.0 International (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

Third-party repositories referenced here keep their own licences.
