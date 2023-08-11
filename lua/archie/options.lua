-- UI about
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.showmode = true

-- Search about
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Indent about
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- Other
vim.opt.lazyredraw = true
vim.opt.wildmenu = false
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.clipboard = "unnamedplus"
vim.opt.pumheight = 10
vim.opt.fileencoding = "utf-8"
vim.opt.showmode = false

-- Set leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Set keymap
local opts = {noremap = true, silent = true}
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)
vim.keymap.set("n", "<leader>q", ":q<CR>", opts)
vim.keymap.set("i", "jk", "<ESC>", opts)
