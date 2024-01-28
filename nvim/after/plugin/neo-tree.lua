vim.keymap.set("n","<leader>t",":Neotree toggle<CR>")

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

require("neo-tree").setup({
    filesystem = {
        filtered_items = {
          visible = false, -- when true, they will just be displayed differently than normal items
          hide_dotfiles = true,
          hide_gitignored = true,
          hide_hidden = true, -- only works on Windows for hidden files/directories
        },
    }
})

--  vim.api.nvim_create_autocmd("VimEnter", {
--     command = "set nornu nonu | Neotree toggle",
-- })
--
-- vim.api.nvim_create_autocmd("BufEnter", {
--   command = "set rnu nu",
-- })
