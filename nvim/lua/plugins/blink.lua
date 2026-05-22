return {
	"saghen/blink.cmp",
	lazy = false, -- blink.cmp handles its own lazy loading
	dependencies = {
		"rafamadriz/friendly-snippets",
		{ "saghen/blink.compat", opts = {} },
	},

	-- use a release tag to download pre-built binaries
	version = "v0.*",
	-- OR build from source, requires nightly: `ninja` and `rustc`
	-- build = 'cargo build --release',

	opts = {
		-- 'default' for mappings similar to built-in completion
		-- 'super-tab' for mappings similar to vscode (tab to accept, arrow keys to navigate)
		-- 'enter' for mappings similar to 'super-tab' but with 'enter' to accept
		-- see the "Installation" section of the readme for more information
		keymap = { preset = "super-tab" },

		appearance = {
			-- Sets the fallback highlight groups to nvim-cmp's highlight groups
			-- Useful for when your theme doesn't support blink.cmp yet
			use_nvim_cmp_as_default = true,
			-- Set to 'mono' for 'Nerd Font Mono' or 'normal' for 'Nerd Font'
			-- Adjusts spacing to ensure icons are aligned
			nerd_font_variant = "mono",
		},

		-- default list of enabled providers defined so that you can extend it
		-- elsewhere in your config, without redefining it, due to `opts_extend`
		sources = {
			default = { "lsp", "path", "snippets", "buffer", "neorg" },
			providers = {
				neorg = {
					name = "neorg",
					module = "blink.compat.source",
				},
			},
		},

		-- Experimental signature help support
		signature = { enabled = true },
	},
	-- allows extending the enabled_providers array elsewhere in your config
	-- without having to redefine it
	opts_extend = { "sources.default" },
}
