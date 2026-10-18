return {
  "jake-stewart/multicursor.nvim",
  branch = "1.0",
  config = function()
    local mc = require("multicursor-nvim")
    mc.setup()
    mc.addKeymapLayer(function(layerSet)
      -- Select a different cursor as the main one.
      layerSet({ "n", "x" }, "<left>", mc.prevCursor)
      layerSet({ "n", "x" }, "<right>", mc.nextCursor)

      -- Delete the main cursor.
      layerSet({ "n", "x" }, "<leader>x", mc.deleteCursor)

      -- Enable and clear cursors using escape.
      layerSet("n", "<esc>", function()
        if not mc.cursorsEnabled() then
          mc.enableCursors()
        else
          mc.clearCursors()
        end
      end)
    end)

    -- Customize how cursors look.
    local hl = vim.api.nvim_set_hl
    hl(0, "MultiCursorCursor", { reverse = true })
    hl(0, "MultiCursorVisual", { link = "Visual" })
    hl(0, "MultiCursorSign", { link = "SignColumn" })
    hl(0, "MultiCursorMatchPreview", { link = "Search" })
    hl(0, "MultiCursorDisabledCursor", { reverse = true })
    hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
    hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
  end,
  keys = {
    -- Add or skip cursor above/below the main cursor.
    { "<A-up>",            function() require("multicursor-nvim").lineAddCursor(-1) end,    mode = { "n", "x" }, desc = "Add cursor above" },
    { "<A-down>",          function() require("multicursor-nvim").lineAddCursor(1) end,     mode = { "n", "x" }, desc = "Add cursor below" },
    { "<leader><up>",    function() require("multicursor-nvim").lineSkipCursor(-1) end,   mode = { "n", "x" }, desc = "Skip cursor above" },
    { "<leader><down>",  function() require("multicursor-nvim").lineSkipCursor(1) end,    mode = { "n", "x" }, desc = "Skip cursor below" },

    -- Add or skip cursors by matching word/selection.
    { "<leader>n",       function() require("multicursor-nvim").matchAddCursor(1) end,    mode = { "n", "x" }, desc = "Add next matching cursor" },
    { "<leader>s",       function() require("multicursor-nvim").matchSkipCursor(1) end,   mode = { "n", "x" }, desc = "Skip next matching cursor" },
    { "<leader>N",       function() require("multicursor-nvim").matchAddCursor(-1) end,   mode = { "n", "x" }, desc = "Add previous matching cursor" },
    { "<leader>S",       function() require("multicursor-nvim").matchSkipCursor(-1) end,  mode = { "n", "x" }, desc = "Skip previous matching cursor" },

    -- Add and remove cursors with Ctrl + left-click.
    { "<C-LeftMouse>",   function() require("multicursor-nvim").handleMouse() end,        mode = "n",          desc = "Handle multicursor mouse" },
    { "<C-LeftDrag>",    function() require("multicursor-nvim").handleMouseDrag() end,    mode = "n",          desc = "Drag multicursor" },
    { "<C-LeftRelease>", function() require("multicursor-nvim").handleMouseRelease() end, mode = "n",          desc = "Release multicursor" },

    -- Disable and enable cursors.
    { "<C-q>",           function() require("multicursor-nvim").toggleCursor() end,       mode = { "n", "x" }, desc = "Toggle multicursors" },
  }
}
