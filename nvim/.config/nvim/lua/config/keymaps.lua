-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    if opts.remap and not vim.g.vscode then
      opts.remap = nil
    end
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

-- Insert Mode Keymaps

map("i", "jf", "<esc>", { desc = "Escape insert mode" })
map("i", "<M-h>", "<", { desc = "Escribir un <" })
map("i", "<M-l>", ">", { desc = "Escribir un >" })
map("i", "<M-u>", "}", { desc = "Escribir un }" })
map("i", "<M-m>", "]", { desc = "Escribir un ]" })
map("i", "<M-a>", "`", { desc = "Escribir un `" })

-- Normal "Mode" Keymaps

map("n", "<M-a>", ":wa<CR>", { desc = "Save All" })

map("n", "<leader>w", "^", { desc = "Go to the begin of the line", nowait = true })
map("n", "<leader>o", "$", { desc = "Go to the end of the line" })

map("n", "<M-u>", "<C-u>zt", { desc = "Go up" })
map("n", "<M-m>", "<C-d>zt", { desc = "Go down" })

map("n", "<leader>;", "A;<esc>", { desc = "Add a ';' at the end of the line" })

map("n", "<leader>SA", "ggVG", { desc = "Select All" })

map("n", "U", "<C-R>", { desc = "Control + Z" })
map("n", "n", "nztzv", { desc = "Center finding" })
map("n", "N", "Nztzv", { desc = "Center finding" })

map("n", "<leader>cc", ":bdelete<CR>", { desc = "Close file" })

map("n", "<leader>/", "<C-W>v", { desc = "Split window right", remap = true })
map("n", "<leader>_", "<C-W>s", { desc = "Split window below", remap = true })

-- Visual Mode Keymaps
map("v", "K", ":move '<-2<CR>gv-gv", { desc = "Move the line up" })
map("v", "J", ":move '>+1<CR>gv-gv", { desc = "Move the line down" })

map("v", "<leader>p", '"_dP', { desc = "Paste text" })
map("v", "<leader>d", '"_d', { desc = "Delete text" })

map("v", "<leader>s", "!sort<cr>", { desc = "Delete text" })

-- Otros (predefinidos por LazyVim)
--maps.v["<"] = { "<gv", desc = "unindent line" }
--maps.v[">"] = { ">gv", desc = "indent line" }
