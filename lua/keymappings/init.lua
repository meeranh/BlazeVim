-- All my keybindings are written here
keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader key
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

-- Load Neotree
keymap("n", "<Leader>t", ":Neotree toggle<CR>", opts)

-- Jump using Flash.nvim
keymap("n", "f", '<cmd>lua require("flash").jump()<CR>', opts)

-- Formatting
keymap("n", "<Leader>;", ":lua require('conform').format()<CR>", opts)
keymap("v", "<Leader>;", ":lua require('conform').format()<CR>", opts)

-- Jump to definition/declaration of a function
keymap("n", "gd", ":Telescope lsp_definitions<CR>", opts)
keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
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
keymap('n', '<Leader>o', '<cmd>Outline<CR>', opts)

-- Unhighlight search match after searching
keymap('n', '<CR>', ':noh<CR><CR>', opts)

-- For navigating through a list of search results
keymap('n', '<A-n>', ':cnext<CR>', opts)
keymap('n', '<A-p>', ':cprevious<CR>', opts)
