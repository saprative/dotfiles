return {
	"nvim-orgmode/orgmode",
	event = "VeryLazy",
	ft = { "org" },
	config = function()
		-- Setup orgmode
		require("orgmode").setup({
			org_agenda_files = "~/.data/org/*",
			org_default_notes_file = "~/.data/org/todo.org",
		})
		vim.keymap.set("n", "<leader>no", ":Neorg workspace notes<CR>")
		vim.keymap.set("n", "<leader>nj", ":Neorg journal<CR>")

		-- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
		-- add ~org~ to ignore_install
		-- require('nvim-treesitter.configs').setup({
		--   ensure_installed = 'all',
		--   ignore_install = { 'org' },
		-- })
	end,
}
