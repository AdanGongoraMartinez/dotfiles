return {
  "nvim-lualine/lualine.nvim",
  -- Carga perezosa después de que casi todo esté cargado
  event = "VeryLazy",

  -- La dependencia de devicons es necesaria para filetype/iconos
  dependencies = { "nvim-tree/nvim-web-devicons" },

  init = function()
    -- Guardar el estado original de 'laststatus'
    vim.g.lualine_laststatus = vim.o.laststatus
    if vim.fn.argc(-1) > 0 then
      -- Si se abren archivos (argc > 0), usar una línea de estado vacía hasta que lualine cargue.
      vim.o.statusline = " "
    else
      -- Si no se abren archivos (dashboard), ocultar la línea de estado inmediatamente.
      vim.o.laststatus = 0
    end
  end,

  opts = function()
    local lualine_require = require("lualine_require")
    lualine_require.require = require

    local icons = LazyVim.config.icons

    -- Restaurar 'laststatus' al valor guardado
    vim.o.laststatus = vim.g.lualine_laststatus

    local opts = {
      options = {
        -- Usar 'auto' para seguir el colorscheme 'gruvbox'
        theme = "auto",
        globalstatus = false,
        icons_enabled = true,

        -- **SOLUCIÓN LAZYVIM PARA OCULTAR EN DASHBOARD/BIENVENIDA:**
        -- Esto deshabilita Lualine en los filetypes del dashboard/bienvenida
        disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },

        section_separators = {
          left = "\u{e0bc}",
          right = "\u{e0ba}",
        },
        component_separators = {},
      },
      sections = {
        -- **TU CONFIGURACIÓN PERSONALIZADA**
        lualine_a = { { "mode", right_padding = 2 } },
        lualine_b = { "branch" },
        lualine_c = {
          "%=", -- Centrar
          "diff",
          {
            "filename",
            file_status = true,
            path = 1,
            shorting_target = 40,
          },
          {
            "filetype",
            icon_only = true,
            separator = "",
            padding = {
              left = 1,
              right = 0,
            },
          },
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
        },
        lualine_x = {
          -- Aquí van los componentes complejos de LazyVim/Snacks (Noice, DAP, Lazy updates, Diff)
          -- Mantendré la estructura de LazyVim para lualine_x, ya que es compleja.
          Snacks.profiler.status(),
          -- ... (componentes de Noice, DAP, Lazy updates, Diff de tu código original) ...

          -- Si no usas Snacks, Noice ni DAP, lualine_x puede ser más simple:
          -- {
          --   "diff",
          --   symbols = { added = icons.git.added, modified = icons.git.modified, removed = icons.git.removed },
          -- },
        },
        lualine_y = {
          "progress",
        },
        lualine_z = {
          { "location", left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {
          "%=", -- Centrar
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
          {
            "filename",
            file_status = true,
            path = 1,
            shorting_target = 40,
          },
          {
            "filetype",
            icon_only = true,
            separator = "",
            padding = {
              left = 1,
              right = 0,
            },
          },
          "location",
        },
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
      extensions = { "neo-tree", "lazy", "fzf" },
    }

    -- La lógica de integración de 'trouble.nvim' debe ir aquí si deseas mantenerla.

    return opts
  end,
}
