keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
local silent = { expr = true, silent = true }

-- Functions --
-- Copy current file path to clipboard
local function insertFullPath()
  local filepath = vim.fn.expand('%:p')
  vim.fn.setreg('+', filepath)
end

-- Toggle error messages
local function toggleDiagnostics()
	if vim.diagnostic.is_disabled() then
		vim.diagnostic.enable()
		print("Diagnostics enabled")

	else
		vim.diagnostic.disable()
		print("Diagnostics disabled")
	end
end

-- Key Bindings --
vim.g.mapleader = " "

-- Toggle Telescope
keymap('n', '<Leader>f', ':Telescope find_files<CR>', opts)
keymap('n', '<Leader>F', ':Telescope live_grep<CR>', opts)

-- Yank to system clipboard
keymap("v", "<Leader>y", '"+y', opts)

-- Cut and copy to system clipboard
keymap("v", "<Leader>x", '"+x', opts)

-- Paste from system clipboard
keymap("v", "<Leader>p", '"+p', opts)
keymap("n", "<Leader>p", '"+p', opts)

-- Jumping between windows
keymap("n", "<Leader>h", "<C-w>h", opts)
keymap("n", "<Leader>j", "<C-w>j", opts)
keymap("n", "<Leader>k", "<C-w>k", opts)
keymap("n", "<Leader>l", "<C-w>l", opts)

-- Swapping windows
keymap("n", "<Leader>H", "<C-w>H", opts)
keymap("n", "<Leader>J", "<C-w>J", opts)
keymap("n", "<Leader>K", "<C-w>K", opts)
keymap("n", "<Leader>L", "<C-w>L", opts)

-- Write file
keymap("n", "<Leader>w", ":w<CR>", opts)

-- Quit file
keymap("n", "<Leader>q", ":q<CR>", opts)

-- Quit without saving
keymap("n", "<Leader>Q", ":q!<CR>", opts)

-- Save and quit
keymap("n", "<Leader>W", ":wq<CR>", opts)

-- Select all
keymap("n", "<Leader>a", "gg0vG$", opts)

-- Go to the end of the line
keymap("n", "<Leader>e", "$", opts)
keymap("v", "<Leader>e", "$h", opts)

-- NvimTree
keymap("n", "<Leader>t", ":NvimTreeToggle<CR>", opts)

-- Jump using Flash.nvim
keymap("n", "f", '<cmd>lua require("flash").jump()<CR>', opts)

-- Formatting
keymap("n", "<Leader>;", ":lua vim.lsp.buf.format()<CR>", opts)
keymap("v", "<Leader>;", ":lua vim.lsp.buf.format()<CR>", opts)

-- Jump to definition/declaration of a function
keymap("n", "gd", ":Telescope lsp_definitions<CR>", opts)
keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
keymap("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)

-- LSP renaming and referencing
keymap("n", "gR", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "gr", ":Telescope lsp_references<CR>", opts)

-- Showing inline errors
keymap("n", "ge", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)

-- Git Mappings
keymap('n', '<Leader>g', ':Neogit<CR>', opts)
keymap('n', '<Leader>b', ':Gitsigns blame_line<CR>', opts)

-- Showing inline errors
keymap('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)

-- Show outline of all functions/variables
keymap('n', '<Leader>o', '<cmd>AerialToggle<CR>', opts)

-- Unhighlight search match after searching
keymap('n', '<CR>', ':noh<CR><CR>', opts)

-- For navigating through a list of search results
keymap('n', '<A-n>', ':cnext<CR>', opts)
keymap('n', '<A-p>', ':cprevious<CR>', opts)

-- Copy current path to clipboard
vim.keymap.set('n', '<leader>cp', insertFullPath, opts)

-- Codeium keybindings
vim.keymap.set('i', '<A-l>', function () return vim.fn['codeium#Accept']() end, silent)
vim.keymap.set('i', '<A-n>', function() return vim.fn['codeium#CycleOrComplete']() end, silent)
vim.keymap.set('i', '<A-p>', function() return vim.fn['codeium#CycleCompletions'](-1) end, silent)
vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, silent)

-- Toggle error messages
vim.keymap.set('n', '<Leader>d', toggleDiagnostics, opts)
