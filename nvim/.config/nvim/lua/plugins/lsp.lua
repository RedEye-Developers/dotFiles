return {
  {
    "GustavEikaas/easy-dotnet.nvim",
    enabled = false,
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim", "folke/snacks.nvim" },
    config = function()
      local dotnet = require("easy-dotnet")
      dotnet.setup({
        auto_bootstrap_namespace = {
          type = "file_scoped",
        },
        lsp = {
          preload_roslyn = false,
        },
      })
    end,
  },
  {
    "seblyng/roslyn.nvim",
    enabled = true,
    opts = {
      filewatching = "off",
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        harper_ls = {
          enabled = false,
          settings = {
            ["harper-ls"] = {
              linters = {
                SentenceCapitalization = false,
                SpellCheck = true,
              },
            },
          },
        },
        tailwindcss = {
          filetypes_include = { "razor" },
          settings = {
            tailwindCSS = {
              includeLanguages = {
                razor = "html",
              },
              experimental = {
                configFile = "/home/redeye/DevProjects/DigitalVault/DigitalVault.Blazor/DigitalVault.Blazor/Styles/styles.css",
              },
            },
          },
        },
      },
      typos_lsp = {
        cmd = { "typos-lsp" },
      },
    },
  },
}
