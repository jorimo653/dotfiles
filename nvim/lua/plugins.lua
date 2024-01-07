local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

return packer.startup(function()

  -- Packer can manage itself as an optional plugin
  use { 'wbthomason/packer.nvim', opt = true }

  use 'shaunsingh/nord.nvim'

  -- Fugitive for Git
  use 'tpope/vim-fugitive'

  -- Vim Surround
  use 'tpope/vim-surround'

  -- Vim Comment
  use 'tpope/vim-commentary'

  -- Telescope for File Navigation
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

end)
