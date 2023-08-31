return {
  "Wansmer/treesj",
  keys = {
    { "<leader>uo", "<cmd>TSJToggle<CR>", desc = "Toggle Treesitter Join" },
  },
  cmd = { "TSJToggle", "TSJSplit", "TSJJoin" },
  opts = { use_default_keymaps = false },
}
