#!/bin/bash
# Installs all 5 research codes into Claude Code, available in every project.
set -e
here="$(cd "$(dirname "$0")" && pwd)"
target="$HOME/.claude/skills"
mkdir -p "$target"

for skill in fact-check papers deep-research competitors; do
  if [ -e "$target/$skill" ]; then
    echo "Skipped /$skill: you already have a skill with that name in $target"
  else
    cp -R "$here/skills/$skill" "$target/$skill"
    echo "Installed /$skill"
  fi
done

# /last30days is Matt Van Horn's skill, installed from his own repo so it keeps getting updates.
if [ -e "$target/last30days" ] || ls "$HOME"/.claude/plugins/cache/*/last30days* >/dev/null 2>&1; then
  echo "Skipped /last30days: already installed"
elif command -v npx >/dev/null 2>&1; then
  npx -y skills add mvanhorn/last30days-skill -g -a claude-code -y && echo "Installed /last30days"
else
  echo "Couldn't install /last30days because Node isn't installed."
  echo "Inside Claude Code, run this instead: /plugin marketplace add mvanhorn/last30days-skill"
fi

echo ""
echo "All set. Restart Claude Code, then type / to see your codes."
