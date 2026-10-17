return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local ts = require("nvim-treesitter")
    local languages = { "lua", "vim", "markdown", "json", "xml", "yaml" }
    ts.install(languages)
	end
}
