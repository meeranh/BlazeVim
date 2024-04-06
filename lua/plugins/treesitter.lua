return {
	"nvim-treesitter/nvim-treesitter",
	version = false,
	build = ":TSUpdate",
	cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
	event = { "VeryLazy", "BufReadPost", "BufWritePost", "BufNewFile" },

	---@type TSConfig
	---@diagnostic disable-next-line: missing-fields
	opts = {
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
	},

	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,

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
}
