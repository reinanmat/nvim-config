vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use ({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			require("rose-pine").setup()
			vim.cmd('colorscheme rose-pine')
		end
	})
	use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use ('nvim-treesitter/playground')
	use ('nvim-lua/plenary.nvim')
	use ('ThePrimeagen/harpoon')
	use ('mbbill/undotree')
	use	("42paris/42header")
	use ('Vimjas/vim-python-pep8-indent')
	use ('tpope/vim-commentary')
	use ('saadparwaiz1/cmp_luasnip')
	use ('hrsh7th/nvim-cmp')
	use ('hrsh7th/cmp-buffer')
	use ('hrsh7th/cmp-path')
	use ('L3MON4D3/LuaSnip')
	use ('rafamadriz/friendly-snippets')
	use ('neovim/nvim-lspconfig')
	use ('williamboman/mason.nvim')
	use	('williamboman/mason-lspconfig.nvim')
	use ('onsails/lspkind.nvim')
	use ("hrsh7th/cmp-nvim-lsp")
	use ({ "glepnir/lspsaga.nvim", branch = "main" })
	use ("nvim-tree/nvim-web-devicons")
	use ('prichrd/netrw.nvim')

	--Floaterm
	use ('voldikss/vim-floaterm')

	--Smart Column
	use ("m4xshen/smartcolumn.nvim")
end)
