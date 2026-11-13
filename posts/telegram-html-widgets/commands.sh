#!/usr/bin/env bash
# Reproduce commands for: Telegram HTML widgets in production
# Source: https://wonmor.io/engineering/telegram-html-widgets/
# Copied verbatim from the post. Run line by line; see README.md for the required checkout.

python3 -c "import sys,zlib;print(len(zlib.compress(open(sys.argv[1],'rb').read(),9)))" widget.html
git clone https://github.com/TelegramMessenger/widget-sandbox
