# Building a self-hosted tunnel

Post: <https://wonmor.io/engineering/self-hosted-tunnel/>  
Kind: engineering · Area: infrastructure · Published: 2026-11-02

## What can be reproduced

The client script is public: read how it pins the frp checksums, and time a TLS handshake against the service the same way we measured ours.

**Private inputs.** The tunnel server and gateway source code are in a private repository and are not published. The client install script is public and is what the commands below inspect.

## Commands

Copied verbatim from the post's *Reproduce this* box. Also saved as [`commands.sh`](commands.sh); run the lines one at a time, since some start a server or need a specific checkout.

```bash
curl -fsSL https://tunnel.dtwin.uz/tunnel.sh | grep -in sha256
curl -s -o /dev/null -w 'tls=%{time_appconnect}s total=%{time_total}s\n' https://tunnel.dtwin.uz
```

## Sources cited in the post

- <https://tunnel.dtwin.uz>
- <https://github.com/fatedier/frp>
- <https://github.com/fatedier/frp/blob/dev/doc/server_plugin.md>
- <https://caddyserver.com/docs/automatic-https#on-demand-tls>
- <https://letsencrypt.org/docs/challenge-types/>
- dtwinuz/tunnel #9
- dtwinuz/tunnel #10

## Licence

Text in this folder: CC BY 4.0. Commands and query files: MIT. See the repository README.
