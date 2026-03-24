return {
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      default_file_explorer = true,
      columns = { "icon" },
      view_options = {
        show_hidden = true,
      },
      win_options = {
        signcolumn = "no",
      },
      keymaps = {
        ["<CR>"] = "actions.select",
        ["l"] = "actions.select",
        ["v"] = "actions.select_vsplit",
        ["s"] = "actions.select_split",
        ["h"] = "actions.parent",
        ["q"] = "actions.close",
      },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Telescope",
    config = function()
      require("telescope").setup({})
    end,
  },

  {
    "junegunn/vim-easy-align",
    keys = { "ga" },
  },
}