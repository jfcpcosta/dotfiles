local augroup = vim.api.nvim_create_augroup("FranciscoDotfiles", { clear = true })

vim.api.nvim_create_autocmd("BufWritePre", {
  group = augroup,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact", "ruby", "lua" },
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
})