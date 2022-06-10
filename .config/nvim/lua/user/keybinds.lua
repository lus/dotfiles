local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Set leader key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Easier window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Escape (normal mode) to stop searching
map("n", "<Esc>", ":noh<CR>", opts)

-- Escape (terminal mode) to return to normal mode
map("t", "<Esc>", "<C-\\><C-n>", opts)

-- Disable arrow keys
map("n", "<Up>", "<Nop>", opts)
map("i", "<Up>", "<Nop>", opts)
map("n", "<Down>", "<Nop>", opts)
map("i", "<Down>", "<Nop>", opts)
map("n", "<Left>", "<Nop>", opts)
map("i", "<Left>", "<Nop>", opts)
map("n", "<Right>", "<Nop>", opts)
map("i", "<Right>", "<Nop>", opts)

