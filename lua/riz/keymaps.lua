local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

 -- Leader key
vim.g.mapleader = " "

-- Navigate between windows
map("n", "<S-h>", "<C-w>h", opts)
map("n", "<S-j>", "<C-w>j", opts)
map("n", "<S-k>", "<C-w>k", opts)
map("n", "<S-l>", "<C-w>l", opts)

-- Barbar
-- Move to previous/next
map("n", "<A-h>", ":BufferPrevious<CR>", opts)
map("n", "<A-l>", ":BufferNext<CR>", opts)

-- Re-order to previous/next
map("n", "<C-A-h>", ":BufferMovePrevious<CR>", opts)
map("n", "<C-A-L>", " :BufferMoveNext<CR>", opts)

-- Goto buffer in position...
map("n", "<A-1>", ":BufferGoto 1<CR>", opts)
map("n", "<A-2>", ":BufferGoto 2<CR>", opts)
map("n", "<A-3>", ":BufferGoto 3<CR>", opts)
map("n", "<A-4>", ":BufferGoto 4<CR>", opts)
map("n", "<A-5>", ":BufferGoto 5<CR>", opts)
map("n", "<A-6>", ":BufferGoto 6<CR>", opts)
map("n", "<A-7>", ":BufferGoto 7<CR>", opts)
map("n", "<A-8>", ":BufferGoto 8<CR>", opts)
map("n", "<A-9>", ":BufferGoto 9<CR>", opts)
map("n", "<A-0>", ":BufferLast<CR>", opts)

-- Close buffer
map("n", "<C-w>", ":BufferClose<CR>", opts)

-- LSP diagnostics
map("n", "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
map("n", "<A-k>", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
map("n", "<A-j>", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
map("n", "<leader>q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)

-- Open nvim-tree
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Clear highlights
map("n", "<C-l>", ":noh<CR>", opts)

-- Move lines of text up and down
map("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Indent lines
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)
