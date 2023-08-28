return {
  {
    "akinsho/toggleterm.nvim",
    cmd = "ToggleTerm",
    keys = {
      { "<M-i>", "<cmd>ToggleTerm direction=float<cr>", desc = "ToggleTerm", mode = { "n", "t" } },
    },
    opts = {
      module = { "toggleterm", "toggleterm.terminal" },
      config = function()
        require("configs.toggleterm")
      end,
    },
  },
}
