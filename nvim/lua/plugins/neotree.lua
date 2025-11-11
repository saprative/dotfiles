return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	enabled = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
	},
	opts = {
		filesystem = {
			filtered_items = {
				visible = false, -- when true, they will just be displayed differently than normal items
				hide_dotfile = true,
				hide_gitignored = true,
				hide_hidden = true, -- only works on Windows for hidden files/directories
			},
		},
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)
		vim.keymap.set("n", "<leader>t", ":Neotree toggle<CR>")
		vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
	end,
}
