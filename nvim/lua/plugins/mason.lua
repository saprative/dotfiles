return {
	"mason-org/mason.nvim",
	dependencies = {
		"mason-org/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"jedi_language_server",
				"tailwindcss",
				"eslint",
				"phpactor",
				"ts_ls",
				"vtsls",
				"emmet_language_server",
			},
		})
	end,
}
