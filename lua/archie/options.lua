-- UI about
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 2

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
vim.opt.pumheight = 8
vim.opt.fileencoding = "utf-8"
vim.opt.showmode = false
vim.opt.cursorline = true
vim.opt.signcolumn = 'no'

-- Set leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

------------------------------
-- Set keymap
------------------------------
local opts = {noremap = true, silent = true}
local term_opts = {silent = true}

vim.keymap.set("n", "<leader>k", "i<CR><ESC>")
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)
vim.keymap.set("i", "jk", "<ESC>", opts)
-- vim.keymap.set("n", "<leader>q", ":q<CR>", opts) -- Avoid quit quickly by hand

-- Window control
vim.keymap.set('n', '<C-h>', "<C-w>h", opts)
vim.keymap.set('n', '<C-l>', "<C-w>l", opts)
vim.keymap.set('n', '<C-j>', "<C-w>j", opts)
vim.keymap.set('n', '<C-k>', "<C-w>k", opts)
vim.keymap.set('n', '<C-c>', "<C-w>c", opts)
vim.keymap.set('n', '<C-o>', "<C-w>o", opts)

-- Visual indent control
vim.keymap.set('v', '<', '<gv^', opts)
vim.keymap.set('v', '>', '>gv^', opts)

-- Delete without copying
-- vim.keymap.set('n', 'd', '"_d', opts)
vim.keymap.set('n', 'x', '"_x', opts)
vim.keymap.set('n', 'c', '"_c', opts)
-- vim.keymap.set('v', 'd', '"_d', opts)
vim.keymap.set('v', 'x', '"_x', opts)
vim.keymap.set('v', 'c', '"_c', opts)
