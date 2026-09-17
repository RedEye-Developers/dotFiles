return {
  "mistricky/codesnap.nvim",
  config = function()
    local codesnap = require("codesnap")
    codesnap.setup({
      snapshot_config = {
        watermark = {
          content = "Neovim",
        },
      },
    })
  end,
}
