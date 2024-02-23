return {
	{ "echasnovski/mini.nvim", version = "*" },

	{
		"nvim-treesitter/nvim-treesitter",
		version = false,
		build = ":TSUpdate",
		dependencies = {
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				enabled = vim.fn.executable("make") == 1,
				config = function()
					require("telescope").load_extension("fzf")
				end,
			},
		},
		event = { "VeryLazy", "BufReadPost", "BufWritePost", "BufNewFile" },
		cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
		opts = {
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {
				"bash",
				"c",
				"diff",
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
		},
	},

	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},

	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		opts = {
			ensure_installed = {
				"stylua",
				"shfmt",
				"flake8",
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		dependencies = {
			{ "folke/neoconf.nvim", config = false, dependencies = { "nvim-lspconfig" } },
			{ "folke/neodev.nvim", opts = {} },
			"mason.nvim",
			{ "williamboman/mason-lspconfig.nvim" },
			opts = {
				ensure_installed = {
					"lua_ls",
				},
			},
		},
	},

	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",

			"nvim-telescope/telescope.nvim",
		},
		config = true,
	},
}
