local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
      'svrana/neosolarized.nvim',
      requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'onsails/lspkind-nvim' -- VSCode-like pictograms
  use 'hrsh7th/cmp-buffer' -- Nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- Nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/typescript.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use { "L3MON4D3/LuaSnip", tag = "v1.*" }

  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- use 'Yggdroot/indenLine'
  use 'thaerkh/vim-indentguides'

  --[[ use 'graywh/vim-colori' ]]
  use 'mtdl9/vim-log-highlighting' -- Log files colorizing

  use 'numToStr/Comment.nvim' -- Comment with gcc

  use { 'akinsho/nvim-bufferline.lua', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' } -- Tabs for Nvim

  use {
      'nvim-treesitter/nvim-treesitter',
      run = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
      end,
  }
  use 'norcalli/nvim-colorizer.lua'
end)
