-- set leader key space
vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("n", "<leader>nh", ":nohl<CR>") -- clear search highlights
keymap.set("n", "<leader>|", "<C-w>v") -- vertical split
keymap.set("n", "<leader>-", "<C-w>s") -- horizontal split
keymap.set("n", "<leader>=", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>x", ":close<CR>") -- split window horizontally 
