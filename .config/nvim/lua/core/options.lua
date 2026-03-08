local opt = vim.opt

vim.wo.signcolumn = "yes" -- keep signcolumn on by default

opt.updatetime = 250 -- time in ms to wait until swap file is written to disk 
opt.timeoutlen = 250 -- faster timeout for better-escape plugin
opt.number = true -- make line numbers default
opt.mouse = "a" -- enable mouse mode, eg: useful for resizing splits
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
opt.shiftwidth = 2 -- size for spaces using << and >> 
opt.tabstop = 2 -- size for spaces for tab
opt.softtabstop = 2 -- size for spaces when pressing tab
opt.shiftround = true
opt.autoindent = true 
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

 -- Case-insensitive searching unless \C or one or more capital letters present
opt.ignorecase = true -- case-insensitive
opt.smartcase = true -- ignore case when pattern contains lowercase letters only

-- Indentation options
opt.smartindent = true -- inserts indents automatically
opt.smarttab = true
opt.autoindent = true

-- Set how nvim will display certain whitespace chars in the editor
-- opt.list = true 
-- opt.listchars = { tab = '>>', trail = '.', nbsp = "_" }
