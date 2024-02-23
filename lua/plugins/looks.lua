return {
	{
	 'folke/trouble.nvim',
	 dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		'nvim-lualine/lualine.nvim',
		event = "VeryLazy",
    dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
	{
		'stevearc/dressing.nvim',
		lazy = true,
		opts = {}
	},

	{
		'lewis6991/gitsigns.nvim',
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		config = function()
			require('gitsigns').setup()
		end
	},

	{
		'nvim-lualine/lualine.nvim',
		opts = {
			options = {
				section_separators = { left = '', right = '' },
				component_separators = { left = '', right = '' },
			},
			sections = {
				lualine_a = { 'mode' },
				lualine_b = { 'branch' },
				lualine_c = { 'filename' },
				lualine_x = { 'filetype' },
				lualine_y = { 'progress' },
				lualine_z = { 'location' }
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { 'filename' },
				lualine_x = { 'location' },
				lualine_y = {},
				lualine_z = {}
			},
			tabline = {},
			extensions = {}
		}
	},

	{
		'stevearc/dressing.nvim',
		opts = {},
	},

}
