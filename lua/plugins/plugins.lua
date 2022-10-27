local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end


return packer.startup(function()
	use 'wbthomason/packer.nvim'

	--colorschemes
	use 'navarasu/onedark.nvim'
	use 'sainnhe/sonokai'
	use 'morhetz/gruvbox'
	use 'LunarVim/onedarker.nvim'
	use "LunarVim/darkplus.nvim"




	-- interface
	use 'kyazdani42/nvim-web-devicons' -- icons
	use 'lukas-reineke/indent-blankline.nvim' -- enable indent  line
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }
	use 'goolord/alpha-nvim'



	-- Treesitter
	use { 'nvim-treesitter/nvim-treesitter'}
	use { "p00f/nvim-ts-rainbow", requires = "nvim-treesitter" } -- enable rainbow parenthese
	use 'JoosepAlviste/nvim-ts-context-commentstring' -- convenient line commenting
	use "numToStr/Comment.nvim"


	-- tools
	use {
	  'nvim-telescope/telescope.nvim',
	    requires = { {'nvim-lua/plenary.nvim'} }
	    }
	use 'windwp/nvim-autopairs' -- autoclose () , {} , '' , etc
	use 'matze/vim-move' -- move lines and text
	use "ahmedkhalf/project.nvim"
	use 'lewis6991/impatient.nvim'
	use 'github/copilot.vim'
	use 'norcalli/nvim-colorizer.lua'
	use "nvim-lua/plenary.nvim"
	use "simrat39/symbols-outline.nvim"
	use { 'CRAG666/code_runner.nvim', requires = 'nvim-lua/plenary.nvim' }



	-- file explorer
	use 'kyazdani42/nvim-tree.lua' -- enable nvimtree



	-- cmp plugins
	use "hrsh7th/nvim-cmp" -- The completion plugin
	use "hrsh7th/cmp-buffer" -- buffer completions
	use "hrsh7th/cmp-path" -- path completions
	use "hrsh7th/cmp-cmdline" -- cmdline completions
	use "saadparwaiz1/cmp_luasnip" -- snippet completions
	use "hrsh7th/cmp-nvim-lsp" -- enable lsp autocomplete with cmp

	-- LSP
	use "neovim/nvim-lspconfig" -- enable LSP
	use "williamboman/nvim-lsp-installer" -- simple to use language server installer
	use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
	use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
	use "mfussenegger/nvim-dap"
	use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

	-- snippets
	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets"



	-- Git
	use "lewis6991/gitsigns.nvim" -- show git commit changes in the signcolumn


	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end

end)
