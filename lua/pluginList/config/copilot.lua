require('copilot').setup({
  panel = {
    enabled = false,
  },

	filetypes = {
		markdown = true
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
