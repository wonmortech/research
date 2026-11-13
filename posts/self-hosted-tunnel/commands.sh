#!/usr/bin/env bash
# Reproduce commands for: Building a self-hosted tunnel
# Source: https://wonmor.io/engineering/self-hosted-tunnel/
# Copied verbatim from the post. Run line by line; see README.md for the required checkout.

curl -fsSL https://tunnel.dtwin.uz/tunnel.sh | grep -in sha256
curl -s -o /dev/null -w 'tls=%{time_appconnect}s total=%{time_total}s\n' https://tunnel.dtwin.uz
