return {
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "javascript", "typescript", "tsx", "html", "php" },
			auto_install = true,
			highlight = { enable = true },
			autotag = { enable = true },
		},
	},
	{ "windwp/nvim-ts-autotag", opts = {} },
}
