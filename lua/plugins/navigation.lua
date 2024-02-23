return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
			"3rd/image.nvim",
		},
		opts = {
			window = {
				position = "left",
				width = 30,
			},
		},
	},
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		opts = {
			search = {
				mode = "search",
			},
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
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")
			harpoon:setup()

			vim.keymap.set("n", "<Leader>=", function()
				harpoon:list():append()
			end)

			vim.keymap.set("n", "<Leader>`", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)

		end,
	},
}
