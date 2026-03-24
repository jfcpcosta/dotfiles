return {
  {
    "mason-org/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local map = vim.keymap.set

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local opts = { buffer = args.buf, silent = true }
          map("n", "gd", vim.lsp.buf.definition, opts)
          map("n", "gr", vim.lsp.buf.references, opts)
          map("n", "gi", vim.lsp.buf.implementation, opts)
          map("n", "K", vim.lsp.buf.hover, opts)
          map("n", "<leader>rn", vim.lsp.buf.rename, opts)
          map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          map("n", "[d", vim.diagnostic.goto_prev, opts)
          map("n", "]d", vim.diagnostic.goto_next, opts)
        end,
      })

      vim.lsp.config("lua_ls", {})
      vim.lsp.config("ts_ls", {})
      vim.lsp.config("jsonls", {})
      vim.lsp.config("yamlls", {})
      vim.lsp.config("bashls", {})

      vim.lsp.enable("lua_ls")
      vim.lsp.enable("ts_ls")
      vim.lsp.enable("jsonls")
      vim.lsp.enable("yamlls")
      vim.lsp.enable("bashls")
    end,
  },
}