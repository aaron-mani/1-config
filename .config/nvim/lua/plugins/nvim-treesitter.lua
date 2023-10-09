return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = {"c", "cpp", "css", "lua", "go", "groovy", "html", "python", "scala", "yaml"},
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  }
}
