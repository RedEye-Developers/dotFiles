return {
  {
    "kevinhwang91/nvim-ufo",
    dependencies = {
      "kevinhwang91/promise-async",
    },
    enabled = false,
    event = "VeryLazy",
    provider_selector = function(bufnr, filetype, buftype)
      return { "lsp", "treesitter" }
    end,
    opts = {
        close_fold_kinds_for_ft = {
        default = {},
        cs = { "imports" },
      },
    },
  },
}
