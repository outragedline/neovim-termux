vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
	
	-- customization and appearance
  use 'navarasu/onedark.nvim' -- colorscheme

	use 'kyazdani42/nvim-web-devicons' -- icons
	use 'lukas-reineke/indent-blankline.nvim' -- enable indent  line


	use {
	'nvim-lualine/lualine.nvim',
	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
	use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}



  -- Treesitter
  use "nvim-treesitter/nvim-treesitter" -- syntax highlight
  use "p00f/nvim-ts-rainbow" -- enable rainbow parenthese
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- convenient line commenting
  use "numToStr/Comment.nvim"


	-- tools 
	use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}

  use 'windwp/nvim-autopairs' -- autoclose () , {} , '' , etc
	use {"akinsho/toggleterm.nvim", tag = 'v1.*'}
	use 'matze/vim-move' -- move lines and text
	use 'nvim-lua/popup.nvim' 
	use "ahmedkhalf/project.nvim"
	use 'lewis6991/impatient.nvim'




	-- file explorer
  use 'kyazdani42/nvim-tree.lua' -- enable nvimtree

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp" -- enable lsp autocomplete with cmp
  use "hrsh7th/cmp-nvim-lua" --  enable nvim.api autocomplete 

	-- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters


	-- snippets
  use "L3MON4D3/LuaSnip"
  use "rafamadriz/friendly-snippets"

  -- Git
  use "lewis6991/gitsigns.nvim" -- show git commit changes in the signcolumn

	use 'goolord/alpha-nvim'
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight



end)
