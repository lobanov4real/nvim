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

  use 'mtdl9/vim-log-highlighting' -- log files highlighting
  use 'Yggdroot/indentLine'

  use 'kyazdani42/nvim-web-devicons' -- File icons

  use({ "L3MON4D3/LuaSnip", tag = "v1.*" }) -- Snippets

  use 'onsails/lspkind-nvim' -- VSCode-like pictograms
  use 'hrsh7th/cmp-buffer' -- Nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- Nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }


end)
