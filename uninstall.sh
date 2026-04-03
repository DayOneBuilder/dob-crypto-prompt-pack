#!/usr/bin/env bash
set -euo pipefail
rm -rf "${HOME}/.agents/skills/dob-crypto-prompt-pack"                "${HOME}/.claude/skills/dob-crypto-prompt-pack"                "${HOME}/.dayonebuilder/dob-crypto-prompt-pack"                "${HOME}/.local/bin/dob-crypto-prompt-pack"
echo "Removed dob-crypto-prompt-pack from Codex, Claude, ~/.dayonebuilder, and ~/.local/bin"
