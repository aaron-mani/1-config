-- set leader key space
vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search highlights
keymap.set("n", "<leader>|", "<C-w>v") -- vertical split
keymap.set("n", "<leader>-", "<C-w>s") -- horizontal split
keymap.set("n", "<leader>=", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>x", ":close<CR>") -- split window horizontally 

-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})
