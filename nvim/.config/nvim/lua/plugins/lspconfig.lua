return {
  "neovim/nvim-lspconfig",
  event = "VeryLazy",
  config = function()
    local lsp_settings = require("config.lsp_settings")

    vim.lsp.config("tailwindcss", lsp_settings.tailwindcss)
    vim.lsp.config("typos_lsp", lsp_settings.typos)

    vim.lsp.enable("typos_lsp")
  end,
  keys = {
    {
      "<leader>lh",
      function()
        vim.lsp.buf.hover()
      end,
      desc = "lsp hover doc",
      mode = "n",
    },
    {
      "<leader>gd",
      function()
        vim.lsp.buf.definition()
      end,
      desc = "lsp go definition",
      mode = "n",
    },
    {
      "<leader>ca",
      function()
        vim.lsp.buf.code_action()
      end,
      desc = "lsp code action",
      mode = "n",
    },
    {
      "<F2>",
      function()
        vim.lsp.buf.rename()
      end,
      desc = "lsp rename",
      mode = "n",
    },
  },
}
