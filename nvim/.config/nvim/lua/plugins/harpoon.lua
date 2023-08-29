return {
  {
    "ThePrimeagen/harpoon",
    keys = {
      { "<leader>ha", ":lua require('harpoon.mark').add_file()<cr>", desc = "Mark new Harpoon" },
      { "<leader>hp", ":lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Open Harpoon Menu" },
      { "<leader>hl", ":lua require('harpoon.ui').nav_next()<cr>", desc = "Next Harpoon" },
      { "<leader>hh", ":lua require('harpoon.ui').nav_prev()<cr>", desc = "Prev Harpoon" },
    },
    -- opts = {
    --   config = function()
    --     require("nvim-lua/plenary.nvim")
    --   end,
    -- },
  },
}
