vim.g.mapleader = ","

-- vim.keymap.set("n","<leader>ev",":e ~/.dotfiles/nvim/<CR>")
vim.keymap.set("n","<leader>ex",":Ex<CR>")

vim.keymap.set("n","<C-b>",":tabp<CR>")
vim.keymap.set("n","<C-w>",":tabn<CR>")
vim.keymap.set("n","<C-t>",":tabnew<CR>")
vim.keymap.set("n","<C-v>",":vsplit<CR>")
vim.keymap.set("n","<C-d>",":split<CR>")
-- "noremap <C-b> <Esc>:tabp<CR>i
-- "inoremap <C-t> 	<Esc>:tabnew<CR>
vim.keymap.set("n","<C-x>",":tabonly<CR>")
--vim.schedule(function()
--    vim.keymap.set("n",':', '<cmd>FineCmdline<CR>', {noremap = true})
--end)





