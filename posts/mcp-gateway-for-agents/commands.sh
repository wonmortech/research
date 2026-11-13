#!/usr/bin/env bash
# Reproduce commands for: An MCP gateway for AI agents: tokens, masking, audit, kill-switch
# Source: https://wonmor.io/research/mcp-gateway-for-agents/
# Copied verbatim from the post. Run line by line; see README.md for the required checkout.

npx @modelcontextprotocol/inspector
claude mcp add --transport http my-gateway https://example.com/mcp --header "Authorization: Bearer <agent-token>"
