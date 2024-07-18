return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"pylsp",
					"tsserver",
					"emmet_language_server",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities() -- for completion
			lspconfig.lua_ls.setup({
				capabilities, -- this will enable autocompletion for the lua lsp
			})
			lspconfig.pylsp.setup({
				capabilities,
			})
			lspconfig.tsserver.setup({
				capabilities,
			})
            lspconfig.emmet_language_server.setup({
                capabilities
            })
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {}) -- Code Actions are operations that include suggestions for refactoring, fixing errors, or implementing methods.
		end,
	},
}
