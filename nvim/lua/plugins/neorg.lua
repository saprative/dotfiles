return {
	"nvim-neorg/neorg",
	lazy = false, -- Neorg v9+ should not be lazy loaded
	version = "*", -- Pin to stable
	build = ":Neorg sync-parsers",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-neorg/lua-utils.nvim",
		"nvim-neorg/pathlib.nvim",
		"nvim-nio",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neorg").setup({
			load = {
				["core.defaults"] = {},
				["core.concealer"] = {},
				["core.dirman"] = {
					config = {
						workspaces = {
							notes = "~/.data/notes",
						},
						default_workspace = "notes",
					},
				},
				["core.completion"] = {
					config = {
						engine = "nvim-cmp",
					},
				},
			},
		})
		vim.keymap.set("n", "<leader>no", ":Neorg workspace notes<CR>", { desc = "Neorg notes" })
		vim.keymap.set("n", "<leader>nj", ":Neorg journal<CR>", { desc = "Neorg journal" })
	end,
}
