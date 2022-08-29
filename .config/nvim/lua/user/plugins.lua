local Plug = vim.fn["plug#"]
vim.call("plug#begin", "~/.config/nvim/plugged")

-- Color scheme
Plug "ful1e5/onedark.nvim"

-- Status line
Plug "nvim-lualine/lualine.nvim"

-- nvim-tree
Plug "kyazdani42/nvim-web-devicons"
Plug "kyazdani42/nvim-tree.lua"

-- Completions
Plug "L3MON4D3/LuaSnip"
Plug "hrsh7th/nvim-cmp"
Plug "hrsh7th/cmp-buffer"
Plug "hrsh7th/cmp-nvim-lsp"
Plug "saadparwaiz1/cmp_luasnip"

-- LSP
Plug "neovim/nvim-lspconfig"

-- Discord presence
Plug "andweeb/presence.nvim"

vim.call("plug#end")

-- Set up the color scheme
require("onedark").setup({
    highlight_linenumber = true
})

-- Set up lualine
require("lualine").setup()

-- Set up nvim-tree
require("nvim-tree").setup({
    open_on_setup = true
})
