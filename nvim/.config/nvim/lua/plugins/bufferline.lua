return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	lazy = false,
	opts = {
		options = {
			numbers = "ordinal",
			hover = {
				enabled = true,
				delay = 200,
				reveal = { "close" },
			},
			separator_style = "thin",
			diagnostics = "nvim_lsp",
		},
	},
}
