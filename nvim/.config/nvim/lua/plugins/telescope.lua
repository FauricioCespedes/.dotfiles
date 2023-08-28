return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>/", false },
    -- change a keymap
    { "<leader>fs", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
  },

  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top", mirror = false },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
}
