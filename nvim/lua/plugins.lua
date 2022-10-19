local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wakatime/vim-wakatime'

  -- Theme
  use 'navarasu/onedark.nvim'
  use 'shaunsingh/nord.nvim'
  use 'Mofiqul/dracula.nvim'

  use 'wbthomason/packer.nvim'

  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'folke/lsp-colors.nvim'
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'L3MON4D3/LuaSnip' -- Snippet
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client

  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'akinsho/nvim-bufferline.lua'

  use 'norcalli/nvim-colorizer.lua'

  use 'glepnir/lspsaga.nvim' -- LSP UIs

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse


end)