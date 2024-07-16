-- install lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim",   cmd = "Neoconf" },
  "folke/neodev.nvim",
  "nvim-lualine/lualine.nvim",
  "mbbill/undotree",
  "lewis6991/gitsigns.nvim",
  "nvim-tree/nvim-web-devicons",
  "MunifTanjim/prettier.nvim",
  "nvim-tree/nvim-tree.lua",
  "RRethy/vim-illuminate",
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  { 'ThePrimeagen/harpoon', dependencies = { 'nvim-lua/plenary.nvim' } },
  -- { 'startup-nvim/startup.nvim', dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" } },
  "prichrd/netrw.nvim",
  "tpope/vim-fugitive",
  "ThePrimeagen/vim-be-good",
  "numToStr/Comment.nvim",
  "savq/melange-nvim", -- theme
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {                            -- Optional
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  },

  {
    'akinsho/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      -- 'stevearc/dressing.nvim',   -- optional for vim.ui.select
    },
    config = true,
  }
})
