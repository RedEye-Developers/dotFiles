return {
  "catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
    local options = {
      color_overrides = {
			  mocha = {
					base = "#000000",
					mantle = "#000000",
				},
  		},
    }
		require("catppuccin").setup(options)
		vim.cmd.colorscheme("catppuccin-mocha")
	end
}
