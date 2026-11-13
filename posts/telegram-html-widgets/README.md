# Telegram HTML widgets in production

Post: <https://wonmor.io/engineering/telegram-html-widgets/>  
Kind: engineering · Area: interfaces · Published: 2026-11-10

## What can be reproduced

Check whether your own widget fits Telegram's budget: compress the HTML with zlib at level 9 and compare the result with 4,096 bytes.

**Private inputs.** The bot code is in a private repository and is not published. The command below checks any widget against Telegram's size budget.

## Commands

Copied verbatim from the post's *Reproduce this* box. Also saved as [`commands.sh`](commands.sh); run the lines one at a time, since some start a server or need a specific checkout.

```bash
python3 -c "import sys,zlib;print(len(zlib.compress(open(sys.argv[1],'rb').read(),9)))" widget.html
git clone https://github.com/TelegramMessenger/widget-sandbox
```

## Sources cited in the post

- <https://core.telegram.org/bots/widgets>
- <https://core.telegram.org/bots/api>
- <https://github.com/TelegramMessenger/widget-sandbox>
- dtwinuz/dtwin #327
- dtwinuz/dtwin #329

## Licence

Text in this folder: CC BY 4.0. Commands and query files: MIT. See the repository README.
