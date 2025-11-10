local builtin = require('telescope.builtin')
local dofiles = function ()
    require('telescope.builtin').find_files({
            cwd="~/.dotfiles/",
            hidden=true
    })
end
vim.keymap.set('n', '<C-P>', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set("n","<leader>ev", function ()
        require('telescope.builtin').find_files({cwd="~/.dotfiles/nvim"})
    end,{})
vim.keymap.set("n","<leader>df",dofiles,{})

