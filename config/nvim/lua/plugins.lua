use = require("packer").use
require("packer").startup(function()
	--
	-- Package manager
	--
	use 'wbthomason/packer.nvim'

	--
	-- Language Server Protocol
	--
	use {
		'neovim/nvim-lspconfig',
		requires = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-cmdline',
			'hrsh7th/nvim-cmp',
			'hrsh7th/cmp-path',
		},
		require'lspconfig'.rust_analyzer.setup{}, -- Rust LSP
		require'lspconfig'.bashls.setup{}, -- Bash LSP
		require'lspconfig'.sumneko_lua.setup { -- Lua LSP
			settings = {
				Lua = {
					runtime = {
						-- Tell the language server which version of Lua
						-- you're using (most likely LuaJIT in the case of
						-- Neovim)
						version = 'LuaJIT',
						},
						diagnostics = {
							-- Get the language server to recognize the `vim`
							-- global
							globals = {'vim'},
						},
						workspace = {
							-- Make the server aware of Neovim runtime files
							library = vim.api.nvim_get_runtime_file("", true),
						},
						-- Do not send telemetry data containing a randomized
						-- but unique identifier
						telemetry = {
							enable = false,
						},
					},
				},
			},
		require'lspconfig'.pylsp.setup{
			settings = {
				pylsp = {
					plugins = {
						pycodestyle = {
							ignore = {'W391'},
							maxLineLength = 100
						}
					}
				}
			}
		}
	}

	--
	-- Linter complementary to LSP
	--
	use {
		'dense-analysis/ale'
	}

	-- Deoplete autocomplete plugin
	use {
		'Shougo/deoplete.nvim',
		config = vim.cmd([[let g:deoplete#enable_at_startup = 1]])
	}

	-- Rust code editing tools
	use {
		'rust-lang/rust.vim',
		config = vim.cmd([[syntax enable
		filetype plugin indent on]])
	}

	--
	-- RGB colorizer
	--
	use {
		-- Install the plugin
		'norcalli/nvim-colorizer.lua',
		-- AGN's own fork that supports '0xRGB', '0xRRGGBB' and '0xRRGGBBAA'
		--'/home/agony/git/nvim-colorizer.lua',
		-- Execute the following function after install
		config = function ()
			-- Sets up the plugin to work with any filetype
			-- This requirement is specified in:
			-- https://github.com/norcalli/nvim-colorizer.lua#customization
			require 'colorizer'.setup(nil, {
					RGB      = true,         -- #RGB hex codes
					RRGGBB   = true,         -- #RRGGBB hex codes
					names    = false,        -- "Name" codes like Blue
					RRGGBBAA = true,         -- #RRGGBBAA hex codes
					rgb_fn   = true,         -- CSS rgb() and rgba() functions
					hsl_fn   = true,         -- CSS hsl() and hsla() functions
					css      = false,         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
					css_fn   = false,         -- Enable all CSS *functions*: rgb_fn, hsl_fn
					-- Available modes: foreground, background
					mode     = 'background'  -- Set the display mode.
				})
		end,
	}

	--
	-- Seiheki colorscheme
	--
	use {
		'delightfulagony/seiheki-nvim',
		--config = vim.cmd([[colorscheme seiheki]])
		config = function()
			if os.execute("[ $(consoletype) == vt ]") == 0 then
				vim.cmd([[colorscheme seiheki-dark]])
			else
				vim.cmd([[colorscheme seiheki]])
			end
		end
	}

	--
	-- Language Server installer
	--
--	use {
--		'williamboman/nvim-lsp-installer',
--		requires = 'neovim/nvim-lspconfig',
--	}

	-- BONUS: Customizations over LSP
	-- Show VSCode-esque pictograms
--	use 'onsails/lspkind-nvim'
	-- show various elements of LSP as UI
--	use {'tami5/lspsaga.nvim', requires = {'neovim/nvim-lspconfig'}}

	--
	-- Autocompletion plugin
	--
	-- use {
	-- 	'hrsh7th/nvim-cmp',
	-- 	requires = {
	-- 		'hrsh7th/cmp-nvim-lsp',
	-- 		'hrsh7th/cmp-buffer',
	-- 		'hrsh7th/cmp-path',
	-- 		'hrsh7th/cmp-cmdline',
	-- 	}
	-- }

	-- snippets
--	use {
--	'hrsh7th/cmp-vsnip', requires = {
--		'hrsh7th/vim-vsnip',
--		'rafamadriz/friendly-snippets',
--		}
--	}

	--
	-- Better syntax highlighting
	--
--	use({
--		{
--			'nvim-treesitter/nvim-treesitter',
--			event = 'CursorHold',
--			run = ':TSUpdate',
--			config = function()
--			require('numToStr.plugins.treesitter')
--			end,
--		},
--		{ 'nvim-treesitter/playground', after = 'nvim-treesitter' },
--		{ 'nvim-treesitter/nvim-treesitter-textobjects', after = 'nvim-treesitter' },
--		{ 'nvim-treesitter/nvim-treesitter-refactor', after = 'nvim-treesitter' },
--		{ 'windwp/nvim-ts-autotag', after = 'nvim-treesitter' },
--		{ 'JoosepAlviste/nvim-ts-context-commentstring', after = 'nvim-treesitter' },
--	})

	--
	-- Colorizer for rgb values
	--
--	use({
--		'norcalli/nvim-colorizer.lua',
--		event = 'CursorHold',
--		config = function()
--		require('colorizer').setup()
--		end,
--	})

	--
	-- Tree navigation
	--
--	use({
--		'kyazdani42/nvim-tree.lua',
--		event = 'CursorHold',
--		config = function()
--			require('numToStr.plugins.nvim-tree')
--		end,
--	})

	use {
		'mattn/emmet-vim',
		config = vim.cmd([[
			let g:user_emmet_leader_key=','
			autocmd FileType html,css EmmetInstall
		]])
	}

	use {
		'grimme-lab/orca.vim'
	}

	use {
		'ray-x/go.nvim'
	}
end)

-- Run PackerCompile after this file gets updated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])
