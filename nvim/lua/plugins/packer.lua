return require('packer').startup(function()
	--> packer can manage itself
	use 'wbthomason/packer.nvim'

	--> mason 'lsp installer' 
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	use 'williamboman/nvim-lsp-installer' --> Companion plugin for lsp-config, allows us to seamlesly install language servers
	use 'jose-elias-alvarez/null-ls.nvim' --> inject lsp diagnistocs, formattings, code actions, and more ...
	use 'tami5/lspsaga.nvim' --> icons for LSP diagnostics
	use 'onsails/lspkind-nvim' --> vscode-like pictograms for neovim lsp completion items
	use 'hrsh7th/nvim-cmp' --> Autocompletion plugin
	use 'hrsh7th/cmp-nvim-lsp' --> LSP source for nvim-cmp
	use 'L3MON4D3/LuaSnip' --> Snippets plugin
	use 'saadparwaiz1/cmp_luasnip' --> Snippets source for nvim-cmp

	--> colorscheme
	use 'gruvbox-community/gruvbox'

	--> ident blankline
	use 'lukas-reineke/indent-blankline.nvim'

	--> nvim file tree. Alternative to NerdTree
	--use {
	use 'nvim-tree/nvim-tree.lua'
		--requires = {
	--		'nvim-tree/nvim-web-devicons', -- optional, for file icons
		--},
		--tag = 'nightly' -- optional, updated every week. (see issue #1193)
	--}

	--> lualine
	--use {
	use 'nvim-lualine/lualine.nvim'
	--	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	--}

	--> telescope
	--use {
	use 'nvim-telescope/telescope.nvim'
	--	requires = { {'nvim-lua/plenary.nvim'} }
	--}

end)