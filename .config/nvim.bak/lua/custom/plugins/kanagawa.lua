return {
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('kanagawa').setup {
        transparent = false,
        theme = 'wave', -- Opciones: "wave", "dragon", "lotus"
        background = {
          dark = 'wave', -- Usa "wave" como tema cuando fondo sea oscuro
          light = 'lotus', -- Opcional, si algún día usas fondo claro
        },
        overrides = function(colors)
          return {
            -- puedes personalizar estilos aquí
          }
        end,
      }

      -- vim.cmd.colorscheme 'kanagawa'
    end,
  },
}
