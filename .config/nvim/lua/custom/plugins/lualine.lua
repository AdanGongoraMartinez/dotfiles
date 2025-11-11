return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          icons_enabled = true,
          theme = 'auto',
          component_separators = { left = '|', right = '|' },
          section_separators = { left = '', right = '' }, -- Burbujas
          globalstatus = true,
        },
        sections = {
          lualine_a = {
            { 'mode', separator = { left = '', right = '' }, right_padding = 2 },
          },
          lualine_b = {
            { 'branch', separator = { left = '', right = '' }, right_padding = 2 },
            { 'diff', separator = { left = '', right = '' }, right_padding = 2 },
            { 'diagnostics', separator = { left = '', right = '' }, right_padding = 2 },
          },
          lualine_c = {
            { 'filename', path = 1, separator = { right = '' }, right_padding = 2 },
            { 'lsp_progress', separator = { left = '', right = '' }, right_padding = 2 },
          },
          lualine_x = {
            { 'encoding', separator = { left = '', right = '' }, right_padding = 2 },
            { 'filetype', separator = { left = '', right = '' }, right_padding = 2 },
            { 'fileformat', separator = { left = '', right = '' }, right_padding = 2 },
          },
          lualine_y = {
            { 'progress', separator = { left = '', right = '' }, right_padding = 2 },
          },
          lualine_z = {
            { 'location', separator = { left = '', right = '' }, right_padding = 2 },
          },
        },
      }
    end,
  },
}
