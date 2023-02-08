local dap = require('dap')

-- Run npm install ts-node --save-dev in workspace folder
dap.configurations.typescript = {
	{
		name = 'Launch',
		type = 'pwa-node',
		request = 'launch',
		program = '${file}',
		runtimeArgs = {'-r', 'ts-node/register' },
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
