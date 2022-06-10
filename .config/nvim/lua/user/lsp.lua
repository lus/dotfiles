local cfg = require("lspconfig")
local util = require("lspconfig/util")
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

-- gopls (Go)
cfg.gopls.setup({
    capabilities = capabilities,
    cmd = { "gopls", "serve" },
    filetypes = { "go", "gomod" },
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    settings = {
        gopls = {
            analyses = {
                unusedparams = true
            },
            staticcheck = true
        }
    }
})

-- Go import organization
vim.api.nvim_create_autocmd({"BufWritePre"}, {
    pattern = {"*.go"},
    callback = function()
        local params = vim.lsp.util.make_range_params()
        params.context = {only = {"source.organizeImports"}}
        local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 1000)
        for _, res in pairs(result or {}) do
            for _, r in pairs(res.result or {}) do
                if r.edit then
                    vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
                else
                    vim.lsp.buf.execute_command(r.command)
                end
            end
        end
    end
})

-- Set up autoformat
vim.api.nvim_create_autocmd({"BufWritePre"}, {
    pattern = {"*"},
    callback = function()
        vim.lsp.buf.formatting_sync()
    end
})
