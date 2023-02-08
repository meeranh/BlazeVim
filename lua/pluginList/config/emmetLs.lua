local lspconfig = require('lspconfig')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
	capabilities = capabilities,
	filetypes = { 'html', 'css', 'sass', 'scss', 'less' },
	init_options = {
		html = {
			options = {
				["bem.enabled"] = true,
			},
		},
	}
})
