# Reproducible MSI and .pkg builds, and the timestamp traps inside

Post: <https://wonmor.io/engineering/reproducible-msi-pkg/>  
Kind: engineering · Area: supply-chain · Published: 2026-11-13

## What can be reproduced

On Ubuntu with libibus-1.0-dev and dpkg-dev, the two builds print identical SHA-256 sums; the last command checks the signed provenance of a released package.

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
git worktree add --detach ../bitg-second HEAD
linux/build-deb.sh && (cd ../bitg-second && linux/build-deb.sh)
sha256sum target/deb/*.deb ../bitg-second/target/deb/*.deb
pwsh installer/build.ps1 -Version 0.3.1   # Windows: run in both worktrees, then compare Get-FileHash dist/*.msi
gh release download v0.3.1 -R dtwinuz/bitg -p 'bitg_0.3.1_amd64.deb' && gh attestation verify bitg_0.3.1_amd64.deb -R dtwinuz/bitg
```

## Sources cited in the post

- <https://github.com/dtwinuz/bitg/pull/48>
- <https://github.com/dtwinuz/bitg/commit/f410210edb7520090b6cebc5456ba7d5571d840d>
- dtwinuz/bitg installer/build.ps1, macos/build.sh, tools/xar_normalize.py, linux/build-deb.sh
- <https://github.com/dtwinuz/bitg/actions/runs/43315704109>
- <https://github.com/dtwinuz/bitg/actions/runs/43367788719>

## Licence

Text in this folder: CC BY 4.0. Commands and query files: MIT. See the repository README.
