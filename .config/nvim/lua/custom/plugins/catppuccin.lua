return {
  {
    'catppuccin/nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        auto_integrations = true,
        transparent = true,
      }

      vim.cmd.colorscheme 'catppuccin'
    end,
  },
}
