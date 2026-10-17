return {
  {
    "mason-org/mason.nvim",
    lazy = false,
    cmd = {
      "Mason",
      "MasonUpdate",
      "MasonInstall",
      "MasonUninstall",
      "MasonUninstallAll",
      "MasonLog",
    },
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    cmd = {
      "MasonUpdate",
      "MasonInstall",
    },
    opts = {
      automatic_enable = true,
      ensure_installed = {
        "lua_ls",
        "vimls",
        "jsonls",
        "yamlls",
        "bashls",
        "typos_lsp",
        "tailwindcss",
        "html",
        "ts_ls",
      },
    },
  },
}
