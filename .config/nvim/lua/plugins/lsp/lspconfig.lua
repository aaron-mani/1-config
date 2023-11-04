return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require('lspconfig')

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
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 }, { desc = "Hover" })
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 }, { desc = "Goto definition" })
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { buffer = 0 }, { desc = "Goto declaration" })
        vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, { buffer = 0 }, { desc = "Goto Type definition" })
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = 0 }, { desc = "Goto Implementation" })
        vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, { buffer = 0 }, { desc = "Diagnostics next" })
        vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, { buffer = 0 }, { desc = "Diagnostics prev" })
      end,
    }
  end,
}
