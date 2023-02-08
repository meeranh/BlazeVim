-- BlazeVim Configurations

-- Check if packer is installed
pcall(require, 'packerCheck')

-- Initialize all plugins
pcall(require, 'pluginList')

-- Initialize Neovim options
pcall(require, 'core')

-- Load all language servers
pcall(require, 'lsp')

-- Loading the debug adapter protocols
pcall(require, 'dbg')

-- Load my keybindings
pcall(require, 'mappings')
