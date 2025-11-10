vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>")

vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

require("neo-tree").setup({})

--  vim.api.nvim_create_autocmd("VimEnter", {
--     command = "set nornu nonu | Neotree toggle",
-- })
--
-- vim.api.nvim_create_autocmd("BufEnter", {
--   command = "set rnu nu",
-- })
