return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tailwindcss = {
          filetypes_include = { "razor" },

          init_options = {
            userLanguages = {
              razor = "html",
            },
          },

          settings = {
            tailwindCSS = {
              experimental = {
                configFile =
                "/home/redeye/DevProjects/DigitalVault/DigitalVault.Blazor/DigitalVault.Blazor/Styles/styles.css",
                classRegex = {},
              },
            },
          },
        },
      },
    },
  },
}
