return {
	{
		"williamboman/mason.nvim",
		event = "VeryLazy",
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require('mason').setup()
		end
	},

	{
		'lewis6991/gitsigns.nvim',
		event = "VeryLazy",
		config = function()
			require('gitsigns').setup()
		end
	},

	{
		"NeogitOrg/neogit",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
	},

	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")
			require("luasnip/loaders/from_vscode").lazy_load()

			cmp.setup({
				-- nvim-cmp will recieve it's completions from the following sources
				sources = {
					{ name = "buffer" },
					{ name = "nvim_lsp" },
					{ name = "path" },
					{ name = "luasnip" },
				},

				-- Making sure that the completion menu has a border
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},

				-- Keybindings for nvim-cmp
				mapping = cmp.mapping.preset.insert({
					["<M-j>"] = cmp.mapping.select_next_item(),
					["<M-k>"] = cmp.mapping.select_prev_item(),
					["<M-CR>"] = cmp.mapping.close(),
					["<CR>"] = cmp.mapping.confirm({
						select = true,
						behavior = cmp.ConfirmBehavior.Replace,
					}),
					["<C-d>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
				}),

				-- The completion menu will use LuaSnip as a source for snippets
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
			})
		end,
	},

	{
		'Exafunction/codeium.vim',
		event = 'BufEnter',
		config = function()
			vim.g.codeium_manual = true
			vim.g.codeium_disable_bindings = 1
		end
	},

	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require('nvim-treesitter.configs').setup({
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				"bash",
				"c",
				"diff",
				"dockerfile",
				"go",
				"html",
				"javascript",
				"jsdoc",
				"json",
				"jsonc",
				"lua",
				"luadoc",
				"luap",
				"markdown",
				"markdown_inline",
				"python",
				"query",
				"regex",
				"toml",
				"tsx",
				"typescript",
				"vim",
				"vimdoc",
				"yaml",
			},
		})
		end
	}
}
