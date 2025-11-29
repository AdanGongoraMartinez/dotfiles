return {
  -- Oil
  vim.keymap.set('n', '<leader>_', ':Oil --float<CR>', { desc = 'Abrir Oil flotante' }),

  -- Buffers
  -- vim.keymap.set('n', '<leader>bd', ':bp | bd #<CR>', { desc = 'Cerrar buffer sin cerrar ventana' }),
  -- vim.keymap.set('n', '<leader>bo', ':%bd|e#|bd#<CR>', { desc = 'Cerrar todos los buffers excepto el actual' }),
  -- vim.keymap.set('n', '<leader>ba', ':%bd<CR>', { desc = 'Cerrar todos los buffers' }),
  vim.keymap.set('n', '<leader>a', ':w<CR>', { desc = 'Guardar buffer' }),
  vim.keymap.set('n', '<leader>n', ':noa w<CR>', { desc = 'Guardar buffer sin formatear' }),

  -- Windows
  vim.keymap.set('n', '<leader>x', ':q<CR>', { desc = 'Cerrar ventana con x' }),
  -- vim.keymap.set('n', '<C-q>', ':q<CR>', { desc = 'Cerrar ventana con Ctrl+q' }),

  -- Line
  vim.keymap.set('n', 'H', '0', { desc = 'Ir al primer caracter con H' }),
  vim.keymap.set('n', 'L', '$', { desc = 'Ir al ultimo caracter con L' }),

  -- Scroll
  vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll abajo y centrar' }),
  vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll arriba y centrar' }),
  vim.keymap.set('n', '<C-f>', '<C-f>zz', { desc = 'Página abajo y centrar' }),
  vim.keymap.set('n', '<C-b>', '<C-b>zz', { desc = 'Página arriba y centrar' }),

  -- Telescope
  vim.keymap.set('n', '<leader>sm', '<cmd>Telescope marks<CR>', { desc = '[S]earch [M]arks' }),
  vim.keymap.set('n', '<leader>st', ':TodoTelescope<CR>', { desc = '[S]earch [T]odo' }),

  -- Shortcut for Note taking
  vim.keymap.set('n', '<leader>sn', function()
    require('telescope.builtin').find_files {
      cwd = vim.fn.expand '~/Documentos/Notes',
    }
  end, { desc = '[S]earch [N]otes files' }),

  -- Debugger
  vim.keymap.set('n', '<leader>Dt', function()
    require('dapui').toggle()
  end, { desc = '[D]ebug: [T]oggle UI' }),
}
