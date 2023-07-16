-- Install the relavant binaries using :Mason for LSP to work

-- Python
require('lspconfig').pyright.setup({})

-- Lua
require("lspconfig").lua_ls.setup({})

-- Java
require("lspconfig").jdtls.setup({})

-- C/C++
require("lspconfig").clangd.setup({})

-- Go
require("lspconfig").gopls.setup({})

-- JavaScript/TypeScript
require("lspconfig").tsserver.setup({})
require("lspconfig").eslint.setup({})

-- JSON
require("lspconfig").jsonls.setup({})

-- Rust
require("lspconfig").rust_analyzer.setup({})

-- CSS
require("lspconfig").cssls.setup({})

-- HTML
require("lspconfig").html.setup({})
