vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

opt.timeoutlen = 299
opt.updatetime = 250 -- Decrease update time
opt.number = true -- Make line numbers default
opt.mouse = "a" -- Enable mouse mode
opt.clipboard:append("unnamedplus") -- Sync clipboard between OS and Neovim
opt.breakindent = true -- Enable break indent
opt.undofile = true -- Save undo history
vim.wo.signcolumn = "yes" -- Keep signcolumn on by default
opt.completeopt = "menuone,noselect" -- Better completion experience
opt.termguicolors = true
opt.backspace = "indent,eol,start"
opt.showcmd = true
opt.laststatus = 2
opt.autowrite = true
opt.cursorline = true -- enable highlighing of the current line
opt.autoread = true
opt.expandtab = true -- use spaces instead of tabs
opt.shiftwidth = 2
opt.shiftround = true
opt.autoindent = true opt.smartindent = true -- inserts indents automatically
opt.showmatch = true
opt.number = true -- print line number
opt.relativenumber = true -- relative line numbers
opt.splitright = true -- put new windows to the right of current window
opt.splitbelow = true -- put new windows below the current window
opt.background = "dark" -- set background dark
opt.swapfile = false -- disable swap files
opt.wrap = false -- wraps long lines of text to fit the screen 
opt.iskeyword:append("-")       
opt.showmode = false -- for lualine
