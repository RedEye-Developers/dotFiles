return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    opts = {
      sections = {
        lualine_z = {
          function()
            return os.date("%-I:%02M %p")
          end,
        },
      },
    }
}
