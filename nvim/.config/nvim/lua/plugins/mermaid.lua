return {
  "kevalin/mermaid.nvim",
  enabled = false,
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  config = function()
    require("mermaid").setup()
  end,
}
