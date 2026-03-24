local map = vim.keymap.set

map("n", "<CR>", "<cmd>nohlsearch<CR>", { silent = true })

map("n", "<leader>e", "<cmd>Oil<CR>", { desc = "Explorer" })

map("n", "<leader>o", function()
  vim.cmd("leftabove vs")
  vim.cmd("vertical resize 35")
  vim.cmd("Oil")
end, { desc = "Oil sidebar" })

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help" })

map("n", "<leader>gs", "<cmd>Git<CR>", { desc = "Git status" })
map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Diagnostics" })
map("n", "<leader>xr", "<cmd>Trouble lsp_references toggle<CR>", { desc = "References" })

map("n", "<leader>t", "<cmd>TestNearest<CR>", { desc = "Test nearest" })
map("n", "<leader>T", "<cmd>TestFile<CR>", { desc = "Test file" })
map("n", "<leader>a", "<cmd>TestSuite<CR>", { desc = "Test suite" })
map("n", "<leader>l", "<cmd>TestLast<CR>", { desc = "Test last" })
map("n", "<leader>g", "<cmd>TestVisit<CR>", { desc = "Test visit" })