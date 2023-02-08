local set = vim.opt
local cmd = vim.cmd

-- Can't live without these
set.number         = true
set.relativenumber = true
set.autoindent     = true
set.expandtab      = true
set.shiftwidth     = 2
set.softtabstop    = 2
set.tabstop        = 2
set.mouse          = "a"
set.cmdheight      = 1
set.showmode       = false
set.lazyredraw     = false
set.termguicolors  = true

-- Setting the colorscheme to One Monokai
cmd "colorscheme tokyonight"

-- Setting line numbering to yellow
cmd "highlight LineNr guifg=#FECA1F"

-- Set GUI font to Iosevka
cmd "set guifont=Iosevka:h18"

-- Loading the Colipot icon for nvim-cmp
vim.api.nvim_set_hl(0, "CmpItemKindCopilot", { fg = "#6CC644" })

-- Setting the current working directory as the workspace directory
vim.api.nvim_set_current_dir(vim.fn.getcwd())
