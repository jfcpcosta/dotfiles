return {
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = {
          "bash",
          "css",
          "dockerfile",
          "go",
          "javascript",
          "json",
          "lua",
          "markdown",
          "ruby",
          "sql",
          "tsx",
          "typescript",
          "vim",
          "yaml",
        },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}