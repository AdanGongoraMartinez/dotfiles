return {
  {
    'stevearc/conform.nvim',
    lazy = false, -- Carga inmediatamente
    keys = {
      -- Mapeo opcional para formatear manualmente con <leader>f (Space + f)
      {
        '<leader>f',
        function()
          require('conform').format()
        end,
        mode = 'n',
        desc = 'Format buffer',
      },
    },
    config = function()
      local conform = require 'conform'

      conform.setup {
        -- 1. Definir los formateadores por tipo de archivo
        formatters_by_ft = {
          html = { 'prettier' },
          css = { 'prettier' },
          json = { 'prettier' },
          javascript = { 'prettier' },
          typescript = { 'prettier' },
          -- Añade otros que necesites (lua = { 'stylua' },)
        },

        -- 2. Habilitar el formateo automático al guardar
        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true, -- Permite que el LSP intente formatear si conform no tiene un formateador
        },
      }
    end,
  },
}
