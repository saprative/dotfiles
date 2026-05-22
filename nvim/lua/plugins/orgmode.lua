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
	end,
}
