return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signcolumn = false,
    numhl = true,
    max_file_length = 10000,
  },
  init = function()
    vim.cmd("highlight GitSignsAddNr guifg=#a3ffac")
    vim.cmd("highlight GitSignsDeleteNr guifg=#ff6961")
    vim.cmd("highlight GitSignsChangeNr guifg=#ffda9e")
  end,
}
