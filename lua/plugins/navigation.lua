return {
	{
		'stevearc/aerial.nvim',
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
	},

	{
		'nvim-tree/nvim-tree.lua',
		version = "*",
		event = "VeryLazy",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({
				git = {
					enable = true,
					ignore = false,
					timeout = 500,
				},
			})
		end,
	},

	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {
			modes = {
				search = {
					enabled = false,
				},
				char = {
					keys = {},
				},
			},
		},
	},

	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		event = "VeryLazy",
		dependencies = {
			'nvim-lua/plenary.nvim'
		}
	},

	{
		"ThePrimeagen/harpoon",
		event = "VeryLazy",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup()
			vim.keymap.set("n", "<Leader>=", function() harpoon:list():add() end)
			vim.keymap.set("n", "<Tab>", function() harpoon:list():next() end)
			vim.keymap.set("n", "<S-Tab>", function() harpoon:list():prev() end)
			vim.keymap.set("n", "<Leader>`", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
		end,
	},
}
