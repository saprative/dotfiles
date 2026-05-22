return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		"viespejo/cc-adapter-gemini-code-assist.nvim", -- Specialized Gemini adapter
	},
	opts = {
		strategies = {
			chat = {
				adapter = "gemini_code_assist",
			},
			inline = {
				adapter = "gemini_code_assist",
			},
			agent = {
				adapter = "gemini_code_assist",
			},
		},
		adapters = {
			gemini_code_assist = function()
				return require("cc-adapter-gemini-code-assist").setup({})
			end,
		},
	},
	keys = {
		{ "<leader>cc", "<cmd>CodeCompanionChat toggle<cr>", desc = "CodeCompanion Chat" },
		{ "<leader>ca", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion Actions" },
	},
}
