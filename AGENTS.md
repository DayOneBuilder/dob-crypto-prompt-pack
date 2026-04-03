# AGENTS.md

This repository is an installable DayOneBuilder product repo for `dob-crypto-prompt-pack`.

If the user asks to install or set up this repo:
1. Run `./install.sh` from the repo root.
2. Verify these paths exist afterward:
   - `~/.agents/skills/dob-crypto-prompt-pack/SKILL.md`
   - `~/.claude/skills/dob-crypto-prompt-pack/SKILL.md`
   - `~/.local/bin/dob-crypto-prompt-pack`
3. Mention the installed helper command: `~/.dayonebuilder/dob-crypto-prompt-pack/bin/export-pack.sh [target-file]`

If the user asks to create local files from this product, use the helper in `bin/export-pack.sh`.
Keep the work productized. Do not invent hosted services or extra dependencies.
