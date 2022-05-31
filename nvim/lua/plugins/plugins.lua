vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'navarasu/onedark.nvim'
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
  use 'kyazdani42/nvim-web-devicons'
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
  use 'lukas-reineke/indent-blankline.nvim'
  use 'windwp/nvim-autopairs'

  use {'neoclide/coc.nvim', branch = 'release'}
  use 'preservim/nerdtree'
  use 'voldikss/vim-floaterm'
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  use 'sheerun/vim-polyglot'
  use 'tiagofumo/vim-nerdtree-syntax-highlight'
  use 'Xuyuanp/nerdtree-git-plugin'
  use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }

end)
