#!/usr/bin/env bash
set -euo pipefail
rm -rf           "$HOME/.agents/skills/dob-crypto-prompt-pack"           "$HOME/.codex/skills/dob-crypto-prompt-pack"           "$HOME/.claude/skills/dob-crypto-prompt-pack"           "$HOME/.local/bin/dob-crypto-prompt-pack"
echo "Removed standalone installs for dob-crypto-prompt-pack from Codex/Claude skill paths and ~/.local/bin"
