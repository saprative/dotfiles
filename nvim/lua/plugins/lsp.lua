return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			{ "stevanmilic/nvim-lspimport" },
		},
		config = function()
			-- Global LSP mappings
			local opts = { remap = false, silent = true }
			vim.keymap.set("n", "<C-]>", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
			vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
			vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
			vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
			vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
			vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)

			-- LSP Import mapping
			vim.keymap.set("n", "<leader>a", require("lspimport").import, { noremap = true, desc = "LSP Import" })

			-- Ensure diagnostics are configured
			vim.diagnostic.config({
				virtual_text = true,
			})
		end,
	},
}
