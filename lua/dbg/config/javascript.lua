local dap = require('dap')

dap.configurations.javascript = {
	{
		name = 'Launch',
		type = 'pwa-node',
		request = 'launch',
		program = '${file}',
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = 'inspector',
		console = 'integratedTerminal',
		resolveSourceMapLocations = {
			"${workspaceFolder}/*",
			"!**/node_modules/**"
		},
	},
}
