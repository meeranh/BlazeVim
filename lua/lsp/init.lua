-- Install the relavant binaries using :Mason for LSP to work

require('lspconfig').pyright.setup({})				-- Python
require("lspconfig").lua_ls.setup({})					-- Lua
require("lspconfig").jdtls.setup({})					-- Java
require("lspconfig").clangd.setup({})					-- C/C++
require("lspconfig").gopls.setup({})					-- Go
require("lspconfig").tsserver.setup({})				-- JavaScript/TypeScript
require("lspconfig").rust_analyzer.setup({})	-- Rust
require("lspconfig").cssls.setup({})					-- CSS
require("lspconfig").html.setup({})						-- HTML
require("lspconfig").phpactor.setup({})				-- PHP
