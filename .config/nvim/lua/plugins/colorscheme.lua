return {
  "rebelot/kanagawa.nvim",
  priority = 1000, -- ensure to load this before all other plugins
  config = function()
    vim.cmd([[colorscheme kanagawa]])
  end,
}
