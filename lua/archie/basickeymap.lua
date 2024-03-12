-- Set leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

------------------------------
-- Set keymap
------------------------------
local opts = {noremap = true, silent = true}
local term_opts = {silent = true}

-- vim.keymap.set("n", "<leader>k", "i<CR><ESC>")
vim.keymap.set("n", "<leader>w", ":w<CR>", opts)
-- vim.keymap.set("i", "jk", "<ESC>", opts)
-- vim.keymap.set("n", "<leader>q", ":q<CR>", opts) -- Avoid quit quickly by hand

-- Window control
vim.keymap.set('n', '<C-h>', ":BufferLineCyclePrev<CR>", opts)
vim.keymap.set('n', '<C-l>', ":BufferLineCycleNext<CR>", opts)
-- vim.keymap.set('n', '<leader>h', "<C-w>h", opts)
-- vim.keymap.set('n', '<leader>l', "<C-w>l", opts)
-- vim.keymap.set('n', '<leader>j', "<C-w>j", opts)
-- vim.keymap.set('n', '<leader>k', "<C-w>k", opts)
vim.keymap.set('n', '<leader>c', "<C-w>c", opts)
vim.keymap.set('n', '<leader>o', "<C-w>o", opts)

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
