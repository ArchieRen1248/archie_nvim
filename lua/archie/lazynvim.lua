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
  "nvim-lualine/lualine.nvim",
  "Mofiqul/vscode.nvim",
  "windwp/nvim-autopairs",

  -- Cmp about
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
  "onsails/lspkind.nvim",

  -- Telescope about
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {"nvim-lua/plenary.nvim"}
  },

  -- Tree-sitter about
  "nvim-treesitter/nvim-treesitter",

  -- Lsp
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",

  -- Nvim-tree about
  "nvim-tree/nvim-tree.lua",
  "nvim-tree/nvim-web-devicons",

  -- Comment
  "numToStr/Comment.nvim",
  -- "tpope/vim-commentary",

  -- Toggleterm
  "akinsho/toggleterm.nvim",

  -- Gitsigns
  "lewis6991/gitsigns.nvim"
})
