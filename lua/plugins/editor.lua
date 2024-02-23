return {
	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		lazy = true,
	},

	{
		"echasnovski/mini.nvim",
		version = "*",
		event = "VeryLazy",
		init = function()
			require("mini.pairs").setup()
		end,
	},

	{
		"stevearc/conform.nvim",
		dependencies = { "mason.nvim" },
		lazy = true,
		init = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "isort", "black" },
					javascript = { { "prettierd", "prettier" } },
					json = { "jq" },
				},
			})
		end,
	},

	{
		"mfussenegger/nvim-lint",
		event = "BufReadPost",
		"BufWritePost",
		"BufNewFile",
		opts = {
			events = { "BufWritePost", "BufReadPost", "InsertLeave" },
		},
	},

	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
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
					-- { name = "nvim_lua" },
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
		"hedyhli/outline.nvim",
		config = function()
			require("outline").setup({})
		end,
	},
}
