require("nvim-lsp-installer").on_server_ready(function(server)
  local opts = {
    on_attach = require("riz.lsp.handlers").on_attach,
    capabilities = require("riz.lsp.handlers").capabilities,
  }

  if server.name == "sumneko_lua" then
    local sumneko_opts = require("riz.lsp.settings.sumneko_lua")
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  server:setup(opts)
end)
