return {
  "neovim/nvim-lspconfig",
  -- Setup language servers.
  config = function()
    local lspconfig = require('lspconfig')
    lspconfig.pyright.setup {}
    lspconfig.tsserver.setup {}
    lspconfig.lua_ls.setup {}
  end,
}
