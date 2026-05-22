return {
	"snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = function(_, opts)
		-- Merge dashboard settings
		opts.dashboard = vim.tbl_deep_extend("force", opts.dashboard or {}, {
			preset = {
				header = [[
    ┏━┓┏━┓┏━┓┏━┓╻ ╻   ╻ ╻╻┏┳┓     
    ┗━┓┣━┫┣━┛┣━┛┗┳┛   ┃┏┛┃┃┃┃     
    ┗━┛╹ ╹╹  ╹   ╹    ┗┛ ╹╹ ╹     
                ]],
				-- stylua: ignore
				keys = {
					{ icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
					{ icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
					{ icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
					{ icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
					{ icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
					{ icon = " ", key = "s", desc = "Restore Session", section = "session" },
					{ icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
					{ icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
					{ icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
			},
		})

		-- Explicitly enable modules that were failing
		opts.input = { enabled = true }
		opts.picker = { enabled = true }
		opts.notifier = { enabled = true }
		opts.scope = { enabled = true }
		opts.explorer = { enabled = true }

		return opts
	end,
	keys = {
		{
			"<leader>t",
			function()
				Snacks.explorer()
			end,
			desc = "Explorer Snacks",
		},
	},
}
