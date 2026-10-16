return {
    "rachartier/tiny-glimmer.nvim",
    event = "VeryLazy",
    priority = 10, -- Low priority to catch other plugins' keybindings
    opts = {
      transparency_color = nil,
      overwrite = {
        yank = {
          enabled = true,
        },
        search = {
          enabled = true,
        },
        paste = {
          enabled = true,
        },
        undo = {
          enabled = true,
        },
        redo = {
          enabled = true,
        },
      },
       animations = {
        fade = {
            from_color = "#89b4fa",
            to_color = "Normal",
        },
    },
    }
}
