-- Setting up nvim-cmp.
local cmp = require("cmp")

-- Options that will be passed to nvim-cmp are defined here.
local options = {
	-- nvim-cmp will recieve it's completions from the following sources
	sources = {
		{ name = "buffer" },
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "luasnip" },
		-- { name = "nvim_lua" },
	},

	-- Making sure that the completion menu has a border
	window = {
		completion    = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},

	-- Keybindings for nvim-cmp
	mapping = cmp.mapping.preset.insert({
		["<M-j>"] = cmp.mapping.select_next_item(),
		["<M-k>"] = cmp.mapping.select_prev_item(),
		["<M-CR>"] = cmp.mapping.close(),
		["<CR>"] = cmp.mapping.confirm({
			select = true,
			behavior = cmp.ConfirmBehavior.Replace,
		}),
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
	}),

	-- The completion menu will use LuaSnip as a source for snippets
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},

}
-- Calling the setup function for nvim-cmp
cmp.setup(options)
