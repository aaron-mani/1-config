-- set leader key space
vim.g.mapleader = " "

local opt = vim.opt

vim.wo.signcolumn = "yes" -- keep signcolumn on by default

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true -- ignore case 
opt.smartcase = true -- ignore case when pattern contains lowercase letters only
-- opt.timeoutlen = 299 -- time in ms to wait for a mapped sequence to complete
opt.updatetime = 250 -- time in ms to wait until swap file is written to disk 
opt.number = true -- make line numbers default
opt.mouse = "a" -- enable mouse mode
opt.clipboard:append("unnamedplus") -- sync clipboard between OS and Neovim
opt.breakindent = true -- enable break indent
opt.undofile = true -- save undo history
opt.completeopt = "menuone,noselect" -- better completion experience
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
opt.colorcolumn = "81"
