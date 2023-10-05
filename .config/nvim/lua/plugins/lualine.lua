return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- configure lazy pending updates count

    -- configure lualine
    lualine.setup({
      options = {
        -- theme = 'onedark',
        icons_enabled = true,
        component_separators = '|',
        section_separators = '',
        disabled_filetypes = {
          statusline = {'NvimTree'}
        }
      },
    })
  end,
}
