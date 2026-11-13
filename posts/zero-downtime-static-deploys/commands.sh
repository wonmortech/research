#!/usr/bin/env bash
# Reproduce commands for: Zero-downtime static deploys with Caddy
# Source: https://wonmor.io/engineering/zero-downtime-static-deploys/
# Copied verbatim from the post. Run line by line; see README.md for the required checkout.

docker run --rm --network none --tmpfs /var/log/caddy -v "$PWD/deploy:/c:ro" caddy:2-alpine caddy validate --config /c/Caddyfile --adapter caddyfile
mkdir -p www/releases/a www/releases/b && ln -sfn releases/a www/current && ln -sfn releases/b www/current.next && mv -T www/current.next www/current && readlink www/current
sed -n '1,80p' deploy/remote.sh
