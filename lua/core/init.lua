local set = vim.opt
local cmd = vim.cmd

-- Can't live without these
set.number         = true
set.relativenumber = true
set.autoindent     = true
set.expandtab      = false
set.shiftwidth     = 2
set.softtabstop    = 2
set.tabstop        = 2
set.mouse          = "a"
set.cmdheight      = 1
set.showmode       = false
set.lazyredraw     = false
set.termguicolors  = true
set.linebreak      = true
set.cmdheight      = 0

-- Search ignorecase/smartcase
set.ignorecase     = true
set.smartcase      = true

-- Setting the colorscheme to Catppuccin
cmd "colorscheme catppuccin-mocha"

-- Setting line numbering to yellow
cmd "highlight LineNr guifg=#FECA1F"

-- Set GUI font to Iosevka
cmd "set guifont=Iosevka:h18"
