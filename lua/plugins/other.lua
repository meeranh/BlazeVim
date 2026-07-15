return {
	{
		"williamboman/mason.nvim",
		event = "VeryLazy",
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
		},
		config = function()
			require('mason').setup()

			-- Mason itself never auto-installs; this ensures the servers
			-- enabled in lua/config/lsp.lua are present (names are Mason
			-- package names, which differ slightly from the `cmd` binaries).
			require('mason-tool-installer').setup({
				ensure_installed = {
					"pyright",
					"bash-language-server",
					"lua-language-server",
					"typescript-language-server",
					"json-lsp",
					"intelephense",
					"omnisharp",
					"gopls",
				},
				run_on_start = true,
			})
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
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require('nvim-treesitter').setup({
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

			-- The main branch no longer auto-enables highlighting; start it per buffer.
			vim.api.nvim_create_autocmd("FileType", {
				callback = function()
					pcall(vim.treesitter.start)
				end,
			})
		end
	}
}
