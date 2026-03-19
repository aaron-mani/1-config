return {
  "akinsho/bufferline.nvim",
  enabled = false,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = { -- runs require("bufferline").setup(opts)
    options = {
      mode = "tabs",
      separator_style = "slant",
    },
  },
}
