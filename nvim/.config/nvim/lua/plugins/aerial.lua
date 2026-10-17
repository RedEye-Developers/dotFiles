return {
  'stevearc/aerial.nvim',
  -- Optional dependencies
  dependencies = {
     "nvim-treesitter/nvim-treesitter",
     "nvim-tree/nvim-web-devicons"
  },
  opts = {
    layout = {
      min_width = 50
    }
  },
  keys = {
    { "<A-a>", "<cmd>AerialToggle!<CR>", "n" },
  }
}
