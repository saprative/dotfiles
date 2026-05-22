
vim.keymap.set("n", "<leader>hx", ":Ex<CR>", { desc = "Open netrw" })

vim.keymap.set("n", "<C-b>", ":tabp<CR>", { desc = "Previous tab" })
vim.keymap.set("n", "<C-Tab>", ":tabn<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<C-t>", ":tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<C-v>", ":vsplit<CR>", { desc = "Vertical split" })
vim.keymap.set("n", "<C-d>", ":split<CR>", { desc = "Horizontal split" })
vim.keymap.set("n", "<C-x>", ":tabonly<CR>", { desc = "Close other tabs" })
