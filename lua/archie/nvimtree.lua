vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

local status, nvimtree = pcall(require, "nvim-tree")
if not status then
  print("Nvim-tree cannot be loaded!")
  return
end
nvimtree.setup()

vim.keymap.set('n', '<leader>b', ":NvimTreeOpen<CR>", {})
