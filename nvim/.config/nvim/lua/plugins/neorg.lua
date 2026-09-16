return {
  {
    "nvim-neorg/neorg",
    dependencies = {
      "nvim-neorg/tree-sitter-norg",
      "nvim-neorg/tree-sitter-norg-meta",
    },
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    run = ":Neorg sync-parsers", -- Synchronize the parsers when Neorg is installed or updated
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {}, -- We added this line!
          ["core.presenter"] = {
            config = {
              zen_mode = "zen-mode",
            },
          },
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/Documents/Neorg/notes",
                projects = "~/Documents/Neorg/projects",
                agenta = "~/Documents/Neorg/agenta",
                learning = "~/Documents/Neorg/learning",
              },
            },
          },
        },
      })
    end,
  },
}
