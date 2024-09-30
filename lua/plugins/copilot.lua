return {
	{
		"zbirenbaum/copilot.lua", -- Make sure this points to the correct repository
		event = "InsertEnter", -- Lazy load on entering insert mode
		init = function()
			require('copilot').setup({
				panel = {
					enabled = false,
				},

				filetypes = {
					markdown = true,
					yaml = true
				},

				suggestion = {
					auto_trigger = false,
					keymap = {
						accept	= "<M-l>",
						open = "<M-o>",
						dismiss = "<M-h>",
						next 	= "<M-n>",
						prev 	= "<M-p>",
					},
				}
			})
		end,
	},
}
