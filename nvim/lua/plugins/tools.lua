return {
	{ "m4xshen/autoclose.nvim", opts = {} },
	{ "xarthurx/taskwarrior.vim" },
	{
		"ribelo/taskwarrior.nvim",
		opts = {},
		config = true,
	},
	{
		"linux-cultist/venv-selector.nvim",
		branch = "regexp",
		dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
		opts = {},
		keys = {
			{ ",v", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
		},
	},
	{
		"kelly-lin/ranger.nvim",
		config = function()
			require("ranger-nvim").setup({ replace_netrw = false })
			vim.keymap.set("n", "<leader>rg", function()
				require("ranger-nvim").open(true)
			end, { desc = "Ranger" })
		end,
	},
}
