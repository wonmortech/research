# An MCP gateway for AI agents: tokens, masking, audit, kill-switch

Post: <https://wonmor.io/research/mcp-gateway-for-agents/>  
Kind: research · Area: agents · Published: 2026-11-02

## What can be reproduced

The gateway repository is private; these public tools let you inspect any MCP server, including one you place behind your own gateway.

**Private inputs.** The gateway source code is in a private repository and is not published. The commands below work against any MCP server, including one behind your own gateway.

## Commands

Copied verbatim from the post's *Reproduce this* box. Also saved as [`commands.sh`](commands.sh); run the lines one at a time, since some start a server or need a specific checkout.

```bash
npx @modelcontextprotocol/inspector
claude mcp add --transport http my-gateway https://example.com/mcp --header "Authorization: Bearer <agent-token>"
```

## Sources cited in the post

- dtwinuz/gateway: README, gateway/server.mjs, connector/connector.mjs (private repository)
- dtwinuz/gateway git history: v0.1.0 to v0.2.0 and alerts, 2026-11-02 to 2026-11-03
- <https://modelcontextprotocol.io/specification>

## Licence

Text in this folder: CC BY 4.0. Commands and query files: MIT. See the repository README.
