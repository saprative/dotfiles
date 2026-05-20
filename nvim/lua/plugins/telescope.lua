return {
	"nvim-telescope/telescope.nvim",
	config = function()
		local builtin = require("telescope.builtin")
		local dofiles = function()
			require("telescope.builtin").find_files({
				cwd = "~/.dotfiles/",
				hidden = true,
			})
		end
		vim.keymap.set("n", "<C-P>", function()
			builtin.find_files({ hidden = true, no_ignore = true })
		end, { desc = "Find files (all)" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help tags" })
		vim.keymap.set("n", "<leader>fc", function()
			require("telescope.builtin").find_files({ 
				cwd = "~/.dotfiles/nvim",
				hidden = true,
				no_ignore = true 
			})
		end, { desc = "Find nvim config" })
		vim.keymap.set("n", "<leader>df", dofiles, { desc = "Find dotfiles" })
	end,
}
