return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	config = function()
		local dotnet = require("easy-dotnet")
		local cfg = {
			sections = {
				lualine_a = { "mode", dotnet.lualine.jobs },
				lualine_x = {
					dotnet.lualine.active_project,
					dotnet.lualine.jobs,
					{
						dotnet.lualine.run_status,
						color = dotnet.lualine.run_status_color,
						on_click = dotnet.lualine.run_status_click,
					},
				},
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
