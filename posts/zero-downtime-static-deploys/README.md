# Zero-downtime static deploys with Caddy

Post: <https://wonmor.io/engineering/zero-downtime-static-deploys/>  
Kind: engineering · Area: infrastructure · Published: 2026-11-13

## What can be reproduced

The first command validates the site's Caddyfile the same way the deploy does, in a container with no network; the second shows the symlink swap on any Linux machine.

## Pinned source

- Repository: <https://github.com/dtwinuz/bitg> (public)
- Commit: `592b4a4`

Run the commands from a checkout of that repository at that commit unless a command clones it for you:

```bash
git clone https://github.com/dtwinuz/bitg && cd bitg && git checkout 592b4a4
```

## Commands

Copied verbatim from the post's *Reproduce this* box. Also saved as [`commands.sh`](commands.sh); run the lines one at a time, since some start a server or need a specific checkout.

```bash
docker run --rm --network none --tmpfs /var/log/caddy -v "$PWD/deploy:/c:ro" caddy:2-alpine caddy validate --config /c/Caddyfile --adapter caddyfile
mkdir -p www/releases/a www/releases/b && ln -sfn releases/a www/current && ln -sfn releases/b www/current.next && mv -T www/current.next www/current && readlink www/current
sed -n '1,80p' deploy/remote.sh
```

## Sources cited in the post

- <https://github.com/dtwinuz/bitg/pull/40>
- <https://github.com/dtwinuz/bitg/commit/592b4a4>
- dtwinuz/bitg deploy/remote.sh, deploy/Caddyfile, deploy/docker-compose.yml
- dtwinuz/dtwin #335 (private repository)

## Licence

Text in this folder: CC BY 4.0. Commands and query files: MIT. See the repository README.
