#!/usr/bin/env bash
# Reproduce commands for: Reproducible MSI and .pkg builds, and the timestamp traps inside
# Source: https://wonmor.io/engineering/reproducible-msi-pkg/
# Copied verbatim from the post. Run line by line; see README.md for the required checkout.

git worktree add --detach ../bitg-second HEAD
linux/build-deb.sh && (cd ../bitg-second && linux/build-deb.sh)
sha256sum target/deb/*.deb ../bitg-second/target/deb/*.deb
pwsh installer/build.ps1 -Version 0.3.1   # Windows: run in both worktrees, then compare Get-FileHash dist/*.msi
gh release download v0.3.1 -R dtwinuz/bitg -p 'bitg_0.3.1_amd64.deb' && gh attestation verify bitg_0.3.1_amd64.deb -R dtwinuz/bitg
