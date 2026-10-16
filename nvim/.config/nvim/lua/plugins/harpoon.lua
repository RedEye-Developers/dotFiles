return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    keys = {
      { "<leader>ha", function() require("harpoon"):list():add() end },
      { "<leader>e", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end },

      { "h1", function() require("harpoon"):list():select(1) end },
      { "h2", function() require("harpoon"):list():select(2) end },
      { "h3", function() require("harpoon"):list():select(3) end },
      { "h4", function() require("harpoon"):list():select(4) end },

      -- Toggle previous & next buffers stored within Harpoon list
      { "h,", function() require("harpoon"):list():prev() end },
      { "h.", function() require("harpoon"):list():next() end },
    }
}
