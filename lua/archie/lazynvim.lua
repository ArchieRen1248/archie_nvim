local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local status, lazy = pcall(require, "lazy")
if not status then
  print("Lazy cannot be loaded!")
  return
end

lazy.setup({
  -- Appearence
  "Mofiqul/vscode.nvim",
  "echasnovski/mini.pairs",
  "echasnovski/mini.comment",
  "akinsho/bufferline.nvim",
  "nvim-lualine/lualine.nvim",

  -- Cmp about
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",

  -- Telescope about
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {"nvim-lua/plenary.nvim"}
  },

  -- Nvim-tree about
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",

  -- Toggleterm
  "akinsho/toggleterm.nvim",

  -- Gitsigns
  "lewis6991/gitsigns.nvim"
})
