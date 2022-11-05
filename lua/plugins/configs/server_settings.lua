-- LSP Server Configurations
local lspconfig = require("lspconfig")
local M = require("plugins.configs.lsp")

require("mason-lspconfig").setup_handlers({
  function (server_name)  -- Default handler
    lspconfig[server_name].setup({
      on_attach = M.on_attach,
      flags = M.lsp_flags,
      capabilities = M.capabilities,
    }) end,
  ["sumneko_lua"] = function ()
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
  end
})
