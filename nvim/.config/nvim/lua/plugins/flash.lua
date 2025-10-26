return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      modes = {
        char = {
          enabled = true,
          -- Usa f/t/F/T solo si quieres (aquí los quitamos)
          keys = { "s" }, -- mantenemos internamente 's' para poder llamarlo desde Alt+s
          jump_labels = true,
          multi_line = true, -- permite saltar entre múltiples líneas
          highlight = {
            backdrop = true,
            matches = true,
          },
        },
      },
      search = {
        multi_window = true,
        wrap = true,
      },
      -- Cambia el rango de líneas arriba/abajo
      jump = {
        -- Cuántas líneas arriba y abajo considerar (por defecto 100)
        range = {
          min = 1,
          max = 500, -- cubre mucho más rango de búsqueda
        },
      },
    },
    keys = function()
      return {
        -- Deshabilitar f/F/t/T originales (los de Vim)
        { "f", false, mode = { "n", "x", "o" } },
        { "F", false, mode = { "n", "x", "o" } },
        { "t", false, mode = { "n", "x", "o" } },
        { "T", false, mode = { "n", "x", "o" } },

        -- 🪄 Nuevo keymap: Alt+s para activar Flash
        {
          "<M-s>",
          mode = { "n", "x", "o" },
          function()
            require("flash").jump()
          end,
          desc = "Flash jump (Alt+s)",
        },
      }
    end,
  },
}
