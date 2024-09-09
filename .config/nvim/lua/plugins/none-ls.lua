return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					-- when adding new sources install them with mason
					-- lua
					null_ls.builtins.formatting.stylua,
					-- python
					null_ls.builtins.diagnostics.pylint,
					-- javascript
					null_ls.builtins.formatting.prettier,
					-- java
					null_ls.builtins.formatting.google_java_format,
				},
			})
			vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {}) -- this is for formatting
		end,
	},
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
		},
	},
}
