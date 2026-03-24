local opt = vim.opt

vim.g.mapleader = " "
vim.g.maplocalleader = " "

opt.number = true
opt.wrap = true
opt.linebreak = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.updatetime = 250
opt.splitbelow = true
opt.splitright = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.swapfile = false
opt.backup = false
opt.writebackup = false
opt.undofile = true
opt.colorcolumn = "100"
opt.list = true
opt.wildmode = { "list", "longest" }
opt.tags = { ".git/tags", "tags" }

local undodir = vim.fn.stdpath("state") .. "/undo"
vim.fn.mkdir(undodir, "p")
opt.undodir = undodir