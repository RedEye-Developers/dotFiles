return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	config = function()
		local cfg = {
			sections = {
				lualine_z = {
					function()
						return os.date("%-I:%02M %p")
					end,
				},
			},
			options = {
				disabled_filetypes = { statusline = { "dashboard", "alpha", "ministarter", "snacks_dashboard" } },
			},
		}

		require("lualine").setup(cfg)
	end,
}
