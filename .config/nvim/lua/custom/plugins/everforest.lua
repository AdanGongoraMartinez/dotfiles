return {
  'neanias/everforest-nvim',
  lazy = false, -- Asegura que se cargue al inicio
  priority = 1000,
  config = function()
    -- Opcional: Configuración antes de aplicar el colorcheme
    -- require('everforest').setup({
    --     background = 'hard', -- 'hard', 'medium', o 'soft'
    --     palette = 'deep',    -- 'deep' o 'default'
    --     -- otros ajustes...
    -- })

    -- Aplicar el color scheme
    -- vim.cmd.colorscheme 'everforest'
  end,
}
