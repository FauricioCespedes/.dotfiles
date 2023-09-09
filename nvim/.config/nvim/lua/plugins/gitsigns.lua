return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signcolumn = false,
    numhl = true,
    max_file_length = 10000,
  },
  init = function()
    vim.cmd("highlight GitSignsAddNr guifg=#4ec22f")
    vim.cmd("highlight GitSignsDeleteNr guifg=#c23d2f")
    vim.cmd("highlight GitSignsChangeNr guifg=#c2c22f")
  end,
}
