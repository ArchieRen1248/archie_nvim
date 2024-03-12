vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

local status, nvimtree = pcall(require, "nvim-tree")
if not status then
  print("nvim-tree cannot be loaded!")
  return
end
nvimtree.setup({
  view = {
    width = 20,
  }
})

local opts = {noremap = true, silent = true}
vim.keymap.set('n', '<C-b>', ":NvimTreeToggle<CR>", opts)
