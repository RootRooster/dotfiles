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
          "ts_ls",
          "emmet_language_server",
          "tailwindcss",
          "eslint",
          "clangd",
          "jdtls",
          "julials",
          "millet",
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
        capabilities,                                                  -- this will enable autocompletion for the lua lsp
      })
      lspconfig.pylsp.setup({
        capabilities,
      })
      lspconfig.ts_ls.setup({
        capabilities,
      })
      lspconfig.tailwindcss.setup({
        capabilities,
      })
      lspconfig.eslint.setup({
        capabilities,
      })
      lspconfig.emmet_language_server.setup({
        capabilities,
      })
      lspconfig.clangd.setup({
        capabilities,
      })
      lspconfig.jdtls.setup({
        capabilities,
      })
      lspconfig.julials.setup({
        capabilities,
      })
      lspconfig.racket_langserver.setup({
        capabilities,
      })
      lspconfig.millet.setup({
        capabilities,
      })
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {}) -- Code Actions are operations that include suggestions for refactoring, fixing errors, or implementing methods.
    end,
  },
}
