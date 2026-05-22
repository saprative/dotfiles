return {
	{
		"kiddos/gemini.nvim",
		opts = {},
	},

	{
		"marcinjahn/gemini-cli.nvim",
		cmd = "Gemini",
		keys = {
			{ "<leader>a/", "<cmd>Gemini toggle<cr>", desc = "Toggle Gemini CLI" },
			{ "<leader>aa", "<cmd>Gemini ask<cr>", desc = "Ask Gemini", mode = { "n", "v" } },
			{ "<leader>af", "<cmd>Gemini add_file<cr>", desc = "Add File" },
		},
		dependencies = {
			"folke/snacks.nvim",
		},
		config = true,
	},

	{
		"folke/sidekick.nvim",
		cmd = "Sidekick",
		opts = {
			-- Configuration for terminal AI agent bridges (Claude Code, OpenCode)
		},
		keys = {
			{ "<leader>as", "<cmd>Sidekick toggle<cr>", desc = "Toggle Sidekick (CLI Agents)" },
		},
	},
}
