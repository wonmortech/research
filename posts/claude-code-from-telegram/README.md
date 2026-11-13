# Controlling Claude Code from Telegram

Post: <https://wonmor.io/engineering/claude-code-from-telegram/>  
Kind: engineering · Area: agents · Published: 2026-10-21

## What can be reproduced

The bot is a private local project; these public commands show the two building blocks it relies on: headless Claude Code with streamed JSON, and the Telegram bot library.

**Private inputs.** The bot itself is a private local project and is not published. The commands below show the two public building blocks it relies on.

## Commands

Copied verbatim from the post's *Reproduce this* box. Also saved as [`commands.sh`](commands.sh); run the lines one at a time, since some start a server or need a specific checkout.

```bash
pip install python-telegram-bot==22.8
claude -p --output-format stream-json --verbose "list the files in this folder"
```

## Sources cited in the post

- claude-telegram-bot: bot.py, notify.py, perm_hook.py, commands.json (private, local project)
- Internal engineering notes, 2026-10-21 to 2026-10-22
- <https://docs.python-telegram-bot.org/>

## Licence

Text in this folder: CC BY 4.0. Commands and query files: MIT. See the repository README.
