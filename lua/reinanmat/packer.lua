vim.cmd [[packadd packer.nvim]]

local fn = vim.fn
local api = vim.api

local install_dir = fn.stdpath("data") .. "/site/pack/packer/start/"
api.nvim_call_function("mkdir", { install_dir, "p" })
local install_path = install_dir .. "packer.nvim"

-- Automatically install packer
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
augroup packer_user_config
autocmd!
autocmd BufWritePost plugins.lua source <afile> | PackerSync
augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
	git = {
		clone_timeout = 300, -- Timeout, in seconds, for git clones
	},
})

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
	use	({ 'rose-pine/neovim', as = 'rose-pine' })
	use ('nvim-lualine/lualine.nvim')
	use ('yorik1984/lualine-theme.nvim')
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
