return {
  {
    "stevearc/conform.nvim",
    opts = {
      notify_on_error = true,
      format_on_save = function()
        return { timeout_ms = 1000, lsp_fallback = true }
      end,
      formatters_by_ft = {
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        markdown = { "prettier" },
        lua = { "stylua" },
        ruby = { "rubocop" },
      },
    },
  },
}