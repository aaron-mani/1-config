return {
  "nvim-telescope/telescope.nvim", tag = "0.1.8",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    -- { "nvim-telescope/telescope-fzf-native.nvim", build = "make -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "truncate" },
        mappings = {
          -- i = {
          --   ["C-p"] = actions.move_selection_previous, -- move to prev result
          --   ["C-n"] = actions.move_selection_next, -- move to next result
          --   ["C-q"] = actions.send_selected_to_qflist + actions.open_qflist,
          -- },
        },
      },
      --[[
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        },
      },
      ]]
    })

    -- telescope.load_extension("fzf")
  end,
}
