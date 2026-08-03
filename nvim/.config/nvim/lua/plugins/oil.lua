return {
  {
    "stevearc/oil.nvim",
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- don't remove or change lazy loading.
    lazy = false,
    opts = {
      keymaps = {
        ["q"] = { "actions.close", mode = "n" },
      },
    },
  },
}
