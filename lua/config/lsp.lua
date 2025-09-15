vim.lsp.config.python = {
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = { "python" },
}

vim.lsp.config.bash = {
	cmd = { "bash-language-server", "start" },
	filetypes = { "sh", "bash", "zsh" },
}

vim.lsp.config.lua = {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
		".git",
	},
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
				path = vim.split(package.path, ";"),
			},
			diagnostics = {
				globals = { 'vim' },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
}

vim.lsp.config.typescript = {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "javascript", "typescript", "typescriptreact", "javascriptreact" },
	root_markers = { 'tsconfig.json', 'package.json', 'jsconfig.json', '.git' },
	settings = {
		typescript = {
			inlayHints = inlayHints,
		},
		javascript = {
			inlayHints = inlayHints,
		}
	},
}

vim.lsp.config.json = {
	cmd = { "vscode-json-language-server", "--stdio" },
	filetypes = { "json", "jsonc" },
	root_markers = { '.git', 'package.json', 'tsconfig.json' },
	init_options = {
		provideFormatter = true,
	},
}

vim.lsp.config.intelephense = {
	cmd = { "intelephense", "--stdio" },
	filetypes = { "php" },
	root_markers = {
		"composer.json",
		".git",
		"index.php",
	},
	settings = {
		intelephense = {
			files = {
				maxSize = 1000000,
			},
			completion = {
				insertUseDeclaration = true,
			},
			diagnostics = {
				enable = true,
			},
		},
	},
}

vim.lsp.enable("intelephense")
vim.lsp.enable("typescript")
vim.lsp.enable("python")
vim.lsp.enable("json")
vim.lsp.enable("bash")
vim.lsp.enable("lua")
