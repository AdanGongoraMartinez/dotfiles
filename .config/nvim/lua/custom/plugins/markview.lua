return {
  {
    'OXY2DEV/markview.nvim',
    -- Load markview.nvim only when opening a markdown file or using a specific command.
    -- This is generally better for performance.
    ft = { 'markdown', 'md' }, -- Load for markdown file types
    cmd = { 'MarkviewOpen' }, -- Load when the MarkviewOpen command is used

    -- It's crucial to ensure nvim-treesitter is loaded *before* markview.nvim
    -- if markview.nvim depends on it for highlighting.
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      -- If you decide to use blink.cmp, you'd uncomment this:
      -- "saghen/blink.cmp"
    },

    -- Configuration for markview.nvim itself
    opts = {
      -- Address the load order warning from markview.nvim
      -- Using check_rtp_message = false will hide the warning but still allow
      -- markview.nvim to try and fix the runtime path if it needs to.
      experimental = {
        check_rtp_message = false,
        -- If you still have highlighting issues, you could try this (less recommended)
        -- check_rtp = false,
      },
      -- Add any other markview.nvim specific options here
      -- For example:
      -- disable_default_keymaps = false,
      -- width = 80,
      -- height = 20,
    },
    -- It's often a good practice to have a config function,
    -- even if it just calls setup with opts.
    config = function(_, opts)
      require('markview').setup(opts)
    end,
  },
}
