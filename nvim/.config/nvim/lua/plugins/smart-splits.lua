return {
  'smart-splits-nvim/smart-splits.nvim',
  dependencies = {
    {
      'smart-splits-nvim/backend-kitty',
      module = 'smart-splits-backend-kitty',
      opts = {
        password = 'KRCP:code-red',
      },
    },
  },
  opts = { -- Plugin Configuration
    mux = {
      backend = 'smart-splits-backend-kitty',
    },
  },
  keys = {
    -- Resize splits
    {
      '<A-h>',
      function()
        require('smart-splits').resize_left()
      end,
      mode = { "n", "t" },
      desc = 'Resize left',
    },
    {
      '<A-j>',
      function()
        require('smart-splits').resize_down()
      end,
      mode = { "n", "t" },
      desc = 'Resize down',
    },
    {
      '<A-k>',
      function()
        require('smart-splits').resize_up()
      end,
      mode = { "n", "t" },
      desc = 'Resize up',
    },
    {
      '<A-l>',
      function()
        require('smart-splits').resize_right()
      end,
      mode = { "n", "t" },
      desc = 'Resize right',
    },
    -- Move between splits
    {
      '<C-h>',
      function()
        require('smart-splits').move_cursor_left()
      end,
      mode = { "n", "t" },
      desc = 'Move left',
    },
    {
      '<C-j>',
      function()
        require('smart-splits').move_cursor_down()
      end,
      mode = { "n", "t" },
      desc = 'Move down',
    },
    {
      '<C-k>',
      function()
        require('smart-splits').move_cursor_up()
      end,
      mode = { "n", "t" },
      desc = 'Move up',
    },
    {
      '<C-l>',
      function()
        require('smart-splits').move_cursor_right()
      end,
      mode = { "n", "t" },
      desc = 'Move right',
    },
    -- Swap buffers
    {
      '<leader><leader>h',
      function()
        require('smart-splits').swap_buf_left()
      end,
      mode = { "n", "t" },
      desc = 'Swap left',
    },
    {
      '<leader><leader>j',
      function()
        require('smart-splits').swap_buf_down()
      end,
      mode = { "n", "t" },
      desc = 'Swap down',
    },
    {
      '<leader><leader>k',
      function()
        require('smart-splits').swap_buf_up()
      end,
      mode = { "n", "t" },
      desc = 'Swap up',
    },
    {
      '<leader><leader>l',
      function()
        require('smart-splits').swap_buf_right()
      end,
      mode = { "n", "t" },
      desc = 'Swap right',
    },
  },
}
