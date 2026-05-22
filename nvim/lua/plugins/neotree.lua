return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	enabled = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = true,
				show_hidden_count = true,
				hide_dotfiles = false,
				hide_gitignored = false,
				hide_by_name = {
					-- ".DS_Store",
					-- "thumbs.db"
				},
				never_show = {},
			},
		},
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)
		vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", { desc = "Explorer NeoTree (root dir)" })
		vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>", { desc = "Explorer NeoTree" })
		vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
	end,
}
