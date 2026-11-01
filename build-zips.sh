#!/bin/bash
# Builds one upload-ready zip per skill for the Claude app, in dist/.
set -e
cd "$(dirname "$0")"
mkdir -p dist
rm -f dist/*.zip
for skill in fact-check papers deep-research competitors; do
  (cd skills && zip -qr "../dist/$skill.zip" "$skill" -x '*.DS_Store')
  echo "dist/$skill.zip"
done
