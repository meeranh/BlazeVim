return {
	{
		"ebadfd/cozy-bear-nvim",
		name = "cozy-bear"
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
				lualine_c = { 'filename' },
				lualine_x = { 'location' },
			},
			tabline = {},
			extensions = {}
		}
	},
}
