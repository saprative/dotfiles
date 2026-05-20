# AI Agents - Shared Knowledge Base

## Core Architecture
This workspace is a **Dotfiles Repository** managed via a `setup.sh` script that symlinks configurations to the user's home directory.

### Key Components
1. **Editor (Neovim):** LazyVim framework. Configuration lives in `nvim/lua/`.
2. **Terminal:** Alacritty + Tmux.
3. **File Management:** Yazi.
4. **Shell:** Zsh.
5. **Alternative Editor:** Doom Emacs (`.doom.d/`).

## Agent Interaction Rules
- **Modularity:** Keep configurations modular. Neovim plugins go in `nvim/lua/plugins/`.
- **Consistency:** Follow the existing coding style in Lua (4-space indentation, double quotes for strings where prevalent).
- **Communication:**
  - `README.md` is the source of truth for humans (installation, dependencies).
  - `GEMINI.md` contains Gemini-specific tool and workflow optimizations.
  - `CLAUDE.md` contains Claude-specific strategic context.
  - `AGENTS.md` (this file) contains shared architectural truths.

## Shared Constraints
- **Leader:** `,`
- **Shell:** `zsh`
- **OS Support:** Primarily Darwin (macOS) and Linux (Ubuntu/Arch).
