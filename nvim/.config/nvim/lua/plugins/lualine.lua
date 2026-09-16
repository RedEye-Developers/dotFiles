return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_z = {
          function()
            return os.date("%-I:%02M %p")
          end,
        },
      },
    },
  },
}
