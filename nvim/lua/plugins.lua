local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

return packer.startup(function()

  -- Packer can manage itself as an optional plugin
  use { 'wbthomason/packer.nvim', opt = true }

  -- Color scheme
  use 'sainnhe/gruvbox-material'
  use 'doums/darcula'
  use 'folke/tokyonight.nvim'

  -- Fuzzy Finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } }
  }
  use "nvim-telescope/telescope-file-browser.nvim"

  -- LSP and completion
  use 'neovim/nvim-lspconfig'
  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')
  use 'nvim-lua/completion-nvim'

  -- use 'onsails/lspkind-nvim' -- VSCode-like pictograms
  use 'L3MON4D3/LuaSnip' -- Snippet engine
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-buffer' -- nvim-source for buffer words
  use 'hrsh7th/nvim-cmp' -- A completion engine plugin for neovim

  -- TreeSitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Vim dispatch
  use 'tpope/vim-dispatch'

  -- Fugitive for Git
  use 'tpope/vim-fugitive'

  -- Vim Surround
  use 'tpope/vim-surround'

  -- Vim Comment
  use 'terrortylor/nvim-comment'

  -- Autopairs
  use {
    'windwp/nvim-autopairs',
    config = function() require("nvim-autopairs").setup {} end
  }
end)
