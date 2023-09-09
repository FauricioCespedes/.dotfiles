return {
  "tpope/vim-fugitive",
  cmd = { "G", "Git" },
  keys = {
    { "<leader>G", ":Git<cr>", desc = "Git" },
    { "<leader>gf", ":Git fetch --all -p<cr>", desc = "Git fetch" },
    { "<leader>gl", ":Git pull<cr>", "Git pull" },
    { "<leader>gp", ":Git push<cr>", "Git push" },
    { "<leader>gcc", ":Git commit<cr>", "Git commit" },
  },
}
