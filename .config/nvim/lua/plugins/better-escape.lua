return {  
  "max397574/better-escape.nvim",
  config = function ()
    require("better_escape").setup {
      default_mappings = true,
      mappings = {
        i = { -- insert mode
          j = {
            k = "<Esc>", -- escape insert mode "jk"
            j = "<Esc>", -- escape insert mode "jj"
          },
          k = {
            j = "<Esc>", -- escape insert mode "kj"
          },
        },
      },
    }
  end,
}
