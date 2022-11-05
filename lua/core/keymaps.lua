-- Not all keymaps are here. For plugin specific keymaps, go to the specific plugin configs.
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "

-- Clear highlights
map("n", "<C-l>", ":noh<CR>", opts)

-- Move blocks of text up and down
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Indentation
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
