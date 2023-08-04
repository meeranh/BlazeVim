-- All my keybindings are written here
keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "

-- Toggle NvimTree
keymap('n', '<Leader>t', ':NvimTreeToggle<CR>', opts)

-- Toggle Telescope
keymap('n', '<Leader>f', ':Telescope find_files<CR>', opts)
keymap('n', '<Leader>F', ':Telescope live_grep<CR>', opts)

-- Yank to system clipboard
keymap('v', '<Leader>y', '"+y', opts)

-- Cut and copy to system clipboard
keymap('v', '<Leader>x', '"+x', opts)

-- Paste from system clipboard
keymap('v', '<Leader>p', '"+p', opts)
keymap('n', '<Leader>p', '"+p', opts)

-- Jumping between windows
keymap('n', '<Leader>h', '<C-w>h', opts)
keymap('n', '<Leader>j', '<C-w>j', opts)
keymap('n', '<Leader>k', '<C-w>k', opts)
keymap('n', '<Leader>l', '<C-w>l', opts)

-- Swapping windows
keymap('n', '<Leader>H', '<C-w>H', opts)
keymap('n', '<Leader>J', '<C-w>J', opts)
keymap('n', '<Leader>K', '<C-w>K', opts)
keymap('n', '<Leader>L', '<C-w>L', opts)

-- Write file
keymap('n', '<Leader>w', ':w<CR>', opts)

-- Quit file
keymap('n', '<Leader>q', ':q<CR>', opts)

-- Quit without saving
keymap('n', '<Leader>Q', ':q!<CR>', opts)

-- Save and quit
keymap('n', '<Leader>W', ':wq<CR>', opts)

-- Select all
keymap('n', '<Leader>a', 'gg0vG$', opts)

-- Go to the end of the line
keymap('n', '<Leader>e', '$', opts)
keymap('v', '<Leader>e', '$h', opts)

-- Jump to definition/declaration of a function
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
keymap('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)

-- Formatting a single line
keymap('v', '<Leader>;', '<cmd>lua vim.lsp.buf.format()<CR>', opts)
keymap('n', '<Leader>;', '<cmd>lua vim.lsp.buf.format( { async = true } )<CR>', opts)
keymap('x', '<Leader>;', '<cmd>lua vim.lsp.buf.format()<CR>', opts)

-- Toggling Copilot and it's inline suggestions
keymap('n', '<Leader>cp', '<cmd>:Copilot toggle<CR>', opts)

-- Keybindings for Hop
keymap('n', 'f', '<cmd>HopChar2<CR>', opts) -- Hop Anywhere (2 Letters)

-- Keybindings for nvim-dap
keymap('n', '<Leader>db', '<cmd>lua require("dap").toggle_breakpoint()<CR>', opts)
keymap('n', '<Leader>dc', '<cmd>lua require("dap").continue()<CR>', opts)
keymap('n', '<Leader>do', '<cmd>lua require("dap").step_over()<CR>', opts)
keymap('n', '<Leader>di', '<cmd>lua require("dap").step_into()<CR>', opts)
keymap('n', '<Leader>dr', '<cmd>lua require("dap").repl.open()<CR>', opts)
keymap('n', '<Leader>dl', '<cmd>lua require("dap").run_last()<CR>', opts)
keymap('n', '<Leader>dt', '<cmd>lua require("dapui").toggle()<CR>', opts)

-- Tabs
keymap('n', '<A-j>', ':tabprevious<CR>', opts)
keymap('n', '<A-k>', ':tabnext<CR>', opts)
keymap('n', '<A-q>', ':tabclose<CR>', opts)

-- LSP renaming and referencing
keymap('n', 'gr', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
keymap('n', 'gR', '<cmd>lua vim.lsp.buf.references()<CR>', opts)

-- Showing inline errors
keymap('n', 'ge', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)

-- Show outline of all functions/variables
keymap('n', '<Leader>o', '<cmd>SymbolsOutline<CR>', opts)

-- Mappings for Harpoon
keymap('n', '<Leader>`', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', opts)
keymap('n', '<Tab>', '<cmd>lua require("harpoon.ui").nav_next()<CR>', opts)
keymap('n', '<Leader>=', '<cmd>lua require("harpoon.mark").add_file()<CR>', opts)

-- Git Mappings
keymap('n', '<Leader>g', ':Neogit<CR>', opts)
