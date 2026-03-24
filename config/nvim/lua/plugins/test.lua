return {
  { "tpope/vim-dispatch" },
  {
    "vim-test/vim-test",
    config = function()
      vim.g["test#strategy"] = "dispatch"
      vim.g["test#ruby#minitest#file_pattern"] = "test_.*%.rb"
    end,
  },
}