# research

[![OpenSSF Scorecard](https://api.scorecard.dev/projects/github.com/wonmortech/research/badge)](https://scorecard.dev/viewer/?uri=github.com/wonmortech/research)

Reproducible material for the posts published at [wonmor.io/research](https://wonmor.io/research/).

Every long post on wonmor.io ends with a *Reproduce this* box. This repository collects those boxes in one place, one folder per post, so the commands can be copied, run and checked without opening the site. Each folder holds:

- `README.md` with the title, a link to the post, what can be reproduced, the exact commands and the sources the post cites;
- `commands.sh` with the same commands, copied verbatim from the post;
- any complete query or script the post contains (for example `query.overpassql` for the mosques post).

Where a post pins a public repository, the README names the repository and the exact commit. Where the code behind a post lives in a private repository, the README says so plainly and lists only what can be checked from public sources. Nothing here goes beyond what the post itself states.

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
