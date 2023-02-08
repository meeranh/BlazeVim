-- Install the relavant packages with :Mason for DAP support
local dap = require('dap')
local masonPath = vim.fn.stdpath('data') .. '/mason'

-- Node JS (js-debug-adapter) (Not for Windows)
require("dap-vscode-js").setup({
	adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' },
	debugger_path = masonPath .. '/packages/js-debug-adapter'
})

-- C/C++ (cpptools) (The binary should be compiled using gcc -g for C / Not for Windows)
dap.adapters.cppdbg = {
	id = 'cppdbg',
	type = 'executable',
	command = masonPath .. '/bin/OpenDebugAD7',
}

-- Python (debugpy)
require('dap-python').setup(masonPath .. '/packages/debugpy/venv/bin/python') -- Linux
-- require('dap-python').setup(masonPath .. '/packages/debugpy/venv/Scripts/python.exe') -- Windows
