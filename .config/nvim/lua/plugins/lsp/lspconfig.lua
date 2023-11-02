return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require('lspconfig')
    -- local lsp_defaults = lspconfig.util.default_config
    -- Merge lspconfig default capabilties with nvim-cmp capabilities
    -- lsp_defaults.capabilities = vim.tbl_deep_extend(
    --   "force",
    --   lsp_defaults.capabilities,
    --   require("cmp_nvim_lsp").default_capabilities()
    -- )

    -- Setup language servers.
    lspconfig.pyright.setup {}
    lspconfig.tsserver.setup {}
    lspconfig.metals.setup {}
    lspconfig.lua_ls.setup {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" }, -- remove undefined refs to vim
          },
        },
      },
    }
    lspconfig.gopls.setup {
      on_attach = function()
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 })
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 })
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 })
        vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, { buffer = 0 })
        vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, { buffer = 0 })
      end,
    }
  end,
}
