local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Leader Key
vim.g.mapleader = " "

-- Clear highlights
map("n", "<C-l>", ":noh<CR>", opts)

-- Move lines of text up and down
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Indent lines
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
