return {
	"seblyng/roslyn.nvim",
	enabled = false,
	ft = { "cs", "razor" },
	config = function()
		local lsp = require("roslyn")
		local lsp_settings = require("config.lsp_settings")
		lsp.setup(lsp_settings.roslyn)
	end,
}
