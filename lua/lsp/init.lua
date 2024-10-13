-- Install the relavant binaries using :Mason for LSP to work

require('lspconfig').pyright.setup({})				-- Python
require("lspconfig").lua_ls.setup({})					-- Lua
require("lspconfig").gopls.setup({})					-- Go
require("lspconfig").ts_ls.setup({})					-- JavaScript/TypeScript
require("lspconfig").rust_analyzer.setup({})	-- Rust
require("lspconfig").cssls.setup({})					-- CSS
require("lspconfig").html.setup({})						-- HTML
require("lspconfig").phpactor.setup({})				-- PHP
require("lspconfig").vuels.setup({})					-- Vue
require("lspconfig").lemminx.setup({})				-- XML
require("lspconfig").terraformls.setup({})		-- Terraform

-- C/C++
require("lspconfig").clangd.setup({
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda" }
})

-- Java
require("lspconfig").jdtls.setup({
  handlers = {
    ['language/status'] = function(_, _)
    end,
    ['$/progress'] = function(_, _, _)
    end,
  },
})
