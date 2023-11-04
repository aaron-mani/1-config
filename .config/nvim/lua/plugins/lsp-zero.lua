return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  dependencies = {
    {'neovim/nvim-lspconfig'},
    {
      'williamboman/mason.nvim',
      build = ":MasonUpdate",
      config = function()
        require("mason").setup()
      end,
    },
    {'williamboman/mason-lspconfig.nvim'},
    -- Autocompletion
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/cmp-buffer"},
    {"hrsh7th/cmp-path"},
    {"saadparwaiz1/cmp_luasnip"},
    {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-nvim-lua"},
    -- Snippets
    {"L3MON4D3/LuaSnip"},
    {"rafamadriz/friendly-snippets"},
    -- Linting and formatting
    {"jose-elias-alvarez/null-ls.nvim"},
  },
  config = function()
    local lsp_zero = require('lsp-zero')
    lsp_zero.extend_lspconfig()
    lsp_zero.on_attach(function(client, bufnr)
      -- see :help lsp-zero-keybindings
      -- to learn the available actions
      lsp_zero.default_keymaps({buffer = bufnr})
    end)

    require('mason-lspconfig').setup({
      -- Replace the language servers listed here 
      -- with the ones you want to install
      ensure_installed = {'tsserver',
        'pyright',
        'lua_ls',
        'gopls',
        -- 'scalameta/nvim-metals'
      },
      handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
          -- Fix undefined global 'vim'
          require('lspconfig').lua_ls.setup {
            settings = {
              Lua = {
                diagnostics = {
                  globals = { 'vim' }
                }
              }
            }
          }
        end,
      },
    })
  end,
}
