vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	--	Plugins Mangagers
	use	('williamboman/mason-lspconfig.nvim')
	use	('williamboman/mason.nvim')
	use	('wbthomason/packer.nvim')
	--	Navigation
	use	{
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use	('ThePrimeagen/harpoon')
	use	('prichrd/netrw.nvim')
	use	('mbbill/undotree')
	--	Syntax Highlighting
	use	('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use	('Vimjas/vim-python-pep8-indent')
	use	('nvim-treesitter/playground')
	use	('tpope/vim-commentary')
	--	Aesthetics
	use	("m4xshen/smartcolumn.nvim")
	use	({ 'nvim-lualine/lualine.nvim', opt = true })
	use	{
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			require("rose-pine").setup()
			vim.cmd('colorscheme rose-pine')
		end
	}
	--	42 Plugins
	use	("42paris/42header")
	--	Autocompletion
	use	('hrsh7th/cmp-buffer')
	use	('hrsh7th/nvim-cmp')
	use	('hrsh7th/cmp-path')
	--	Snippets
	use	('rafamadriz/friendly-snippets')
	use	('saadparwaiz1/cmp_luasnip')
	use	('L3MON4D3/LuaSnip')
	--	Lsp
	use	({ "glepnir/lspsaga.nvim", branch = "main" })
	use	('neovim/nvim-lspconfig')
	use	('onsails/lspkind.nvim')
	use	("hrsh7th/cmp-nvim-lsp")
	--	Dependencies
	use	('kyazdani42/nvim-web-devicons')
	use	('nvim-lua/plenary.nvim')

end)
