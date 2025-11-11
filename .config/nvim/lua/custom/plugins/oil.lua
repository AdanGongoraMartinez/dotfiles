return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    -- 🟢 Activar modo flotante
    float = {
      padding = 2, -- Espacio alrededor de la ventana flotante
      max_width = 80, -- Ancho máximo de la ventana
      max_height = 30, -- Altura máxima de la ventana
      border = 'rounded', -- Opciones: "single", "double", "rounded", "solid"
      win_options = {
        winblend = 10, -- Transparencia (0 = opaco, 100 = invisible)
      },
    },
    -- ⏩ Abrir en modo flotante automáticamente
    view_options = {
      show_hidden = true, -- Muestra archivos ocultos
    },
    default_file_explorer = true, -- Reemplaza `netrw`
  },
  -- Optional dependencies
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
