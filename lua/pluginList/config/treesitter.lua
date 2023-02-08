-- Starting TreeSitter and enabling syntax highlighting
require('nvim-treesitter.configs').setup({
  ensure_installed = {
    "lua",
    "python",
    "typescript",
    "javascript",
    "c",
    "java",
    "html",
    "css",
  },
 
	highlight = {
		enable = true,
	},

	autotag = {
		enable = true,
	},

})
