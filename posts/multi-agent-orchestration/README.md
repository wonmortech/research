# Multi-agent orchestration in practice

Post: <https://wonmor.io/research/multi-agent-orchestration/>  
Kind: research · Area: agents · Published: 2026-10-26

## What can be reproduced

The repositories are private; these commands set up the same isolation pattern (one worktree and branch per agent) in any git repository.

**Private inputs.** The repositories the post describes are private and are not published. The commands below set up the same isolation pattern in any git repository.

## Commands

Copied verbatim from the post's *Reproduce this* box. Also saved as [`commands.sh`](commands.sh); run the lines one at a time, since some start a server or need a specific checkout.

```bash
git worktree add ../app-habits -b life/habits
git worktree list
mkdir -p ~/.claude/agents
```

## Sources cited in the post

- Agent role definitions in ~/.claude/agents (deep-reasoner, fast-worker, critic), 2026-07
- dtwinuz/dtwin PR #16 (eight modules, merged 2026-10-26) and PR #38 (callback prefix fix, 2026-10-26)
- dtwinuz/med-dtwin issues #57 to #99 (closed as not planned, 2026-11-02)
- Internal engineering notes, 2026-07 to 2026-11

## Licence

Text in this folder: CC BY 4.0. Commands and query files: MIT. See the repository README.
