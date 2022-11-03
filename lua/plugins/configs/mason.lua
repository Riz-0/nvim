require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("plugins.configs.lspconfig")

require("mason-lspconfig").setup_handlers {
  function (server_name)  -- Default handler
    require("lspconfig")[server_name].setup {
      on_attach = lspconfig.on_attach,
      flags = lspconfig.lsp_flags,
      capabilities = lspconfig.capabilities,
    }
  end,
}
