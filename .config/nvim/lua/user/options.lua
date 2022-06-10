local options = {
    clipboard = "unnamedplus",
    completeopt = { "menuone", "noselect" },
    fileencoding = "UTF-8",
    ignorecase = true,
    pumheight = 10,
    showmode = false,
    showtabline = 2,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    termguicolors = true,
    updatetime = 300,
    expandtab = true,
    tabstop = 4,
    shiftwidth = 4,
    number = true,
    relativenumber = true,
    cursorline = true,
    signcolumn = "yes",
    scrolloff = 8,
    title = true,
    titlestring = "neovim"
}

for name, value in pairs(options) do
    vim.opt[name] = value
end
