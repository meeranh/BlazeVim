-- Setting up the snippet engine
local ls = require('luasnip')

-- Snippets from friendly-snippets are lazy-loaded.
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()

ls.filetype_extend("all", { "_" })
ls.filetype_extend("typescript", { "javascript" })
ls.filetype_extend("typescriptreact", { "javascriptreact" })
