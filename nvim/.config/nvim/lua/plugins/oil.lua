return {
  'stevearc/oil.nvim',
  dependencies = { 
    "nvim-mini/mini.icons",
  },
  opts = {
    keymaps = {
        ["q"] = { "actions.close", mode = "n" },
    },
  },
  keys = {
    { "-", "<CMD>Oil<CR>", mode = "n", desc = "Open parent directory" },
  },
}
