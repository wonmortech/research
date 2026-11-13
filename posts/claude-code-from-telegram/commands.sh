#!/usr/bin/env bash
# Reproduce commands for: Controlling Claude Code from Telegram
# Source: https://wonmor.io/engineering/claude-code-from-telegram/
# Copied verbatim from the post. Run line by line; see README.md for the required checkout.

pip install python-telegram-bot==22.8
claude -p --output-format stream-json --verbose "list the files in this folder"
