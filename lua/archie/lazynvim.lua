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
  print("lazy cannot be loaded!")
  return
end

lazy.setup({
  -- Appearence
  "Mofiqul/vscode.nvim",
  "echasnovski/mini.pairs",
  "akinsho/bufferline.nvim",
  "nvim-lualine/lualine.nvim",

  -- Language about
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "nvim-treesitter/nvim-treesitter",
  "stevearc/conform.nvim",
  'numToStr/Comment.nvim',
  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
    lazy = true,
  },

  -- Cmp about
  "neovim/nvim-lspconfig",
  "hrsh7th/cmp-nvim-lsp",
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

  -- Git about
  "lewis6991/gitsigns.nvim",
  "tanvirtin/vgit.nvim"
})
