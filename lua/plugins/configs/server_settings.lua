-- LSP Server Configurations
local lspconfig = require("lspconfig")
local M = require("plugins.configs.lsp")

lspconfig.sumneko_lua.setup({
  on_attach = M.on_attach,
  flags = M.lsp_flags,
  capabilities = M.capabilities,
  -- Server settings
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", }
      }
    }
  }
})
