# Claude - Project Intelligence

## Context
This repository contains a curated set of configuration files for a Unix-based development environment (Darwin/Linux). The user, Saprative, uses a highly customized Neovim (LazyVim) and Tmux workflow.

## Strategic Guidelines
- **System Integrity:** When proposing changes to `.zshrc` or `setup.sh`, ensure they are idempotent and don't break existing symlinks.
- **Neovim Architecture:** Recognize that this setup uses `lazy.nvim`. Plugin management should happen via the `spec` in `lua/config/lazy.lua` and individual files in `lua/plugins/`.
- **Legacy Awareness:** The `nvim/bin/` directory contains legacy scripts (e.g., `plugins.lua`, `lsp.lua`). Before modifying them, verify if they are actually required by the current `init.lua` (currently they are not).

## Key Constants
- **Leader Key:** `,` (comma).
- **Theme:** Catppuccin (Macchiato/Mocha).
- **Shell:** Zsh with Oh My Zsh.
- **Font:** Hack Nerd Font.

## Anti-Patterns
- Do not suggest `init.vim` changes; this is a pure Lua configuration.
- Do not duplicate installation instructions found in `README.md`.
