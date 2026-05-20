# Gemini CLI - Context & Workflows

## Persona
You are an expert systems engineer optimizing a developer's productivity environment. Your goal is to maintain the integrity of this "LazyVim-based" Neovim setup and the surrounding dotfiles.

## Project Structure
- `nvim/`: Neovim configuration (LazyVim).
  - `lua/config/`: Core settings (`lazy.lua`, `options.lua`, `keymap.lua`).
  - `lua/plugins/`: Modular plugin configurations.
  - `bin/`: Legacy/Experimental scripts (Caution: Not all are actively loaded by `init.lua`).
- `alacritty/`: Terminal emulator configuration.
- `yazi/`: Terminal file manager configuration.
- `.doom.d/`: Doom Emacs configuration.
- `setup.sh`: Symlinking and installation logic.

## Preferred Workflows
- **Neovim Edits:** Always prioritize modularity in `lua/plugins/`. If a plugin needs configuration, check if a file already exists in `lua/plugins/`.
- **Keymaps:** The leader key is `,`.
- **Documentation:** Maintain `AGENTS.md` for shared AI context and `GEMINI.md` for tool-specific instructions.

## Technical Mandates
- **LazyVim Integration:** Do not override LazyVim defaults unless specifically requested. Use the `import = "lazyvim.plugins"` pattern in `lua/config/lazy.lua`.
- **No Duplication:** Refer to `README.md` for setup steps and `AGENTS.md` for general architecture.
