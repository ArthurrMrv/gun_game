#!/usr/bin/env sh
# Wraps the page source into a standalone index.html (for GitHub Pages or any static host).
set -e
cd "$(dirname "$0")"
{ printf '<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"><style>:root{padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}[hidden]{display:none!important}</style></head><body>\n'
  cat src/frugal-quest.html
  printf '\n</body></html>\n'; } > index.html
echo "index.html: $(wc -c < index.html) bytes"
