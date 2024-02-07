require('todotxt-nvim').setup({
	todo_file = "~/.data/todo.txt",
})

vim.keymap.set('n','<leader>tl',":ToDoTxtTasksToggle<cr>")
vim.keymap.set('n','<leader>tc',":ToDoTxtCapture<cr>")
