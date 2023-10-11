-- set leader key space
vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlighting" }) -- clear search highlights
keymap.set("n", "<leader>|", "<C-w>v", { desc = "Split vertical" }) -- vertical split
keymap.set("n", "<leader>-", "<C-w>s", { desc = "Split horizontal" }) -- horizontal split
keymap.set("n", "<leader>=", "<C-w>=", { desc = "Split equal" }) -- make split windows equal width
keymap.set("n", "<leader>x", ":close<CR>", { desc = "Split close" }) -- split window horizontally 

-- telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, { desc = "Telescope: find files" })
keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Telescope: live grep" })
keymap.set('n', '<leader>fb', builtin.buffers, { desc = "Telescope: find in buffers" })
keymap.set('n', '<leader>fh', builtin.help_tags, { desc = "Telescope: help tags" })
