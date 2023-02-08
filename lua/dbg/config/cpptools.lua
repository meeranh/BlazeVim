local dap = require('dap')

dap.configurations.c = {
	{
		name = "Launch file",
		type = "cppdbg",
		request = "launch",
		program = function()
			-- The binary should be compiled using gcc -g
			return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
		end,
		stopAtEntry = false,
		cwd = '${workspaceFolder}',
	},
}
