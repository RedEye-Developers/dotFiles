return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		vim.lsp.config("lua_ls", {
			capabilities = capabilities,
		})
		vim.lsp.enable("lua_ls")
	end,
	keys = {
		{
			"<leader>lh",
			function()
				vim.lsp.buf.hover()
			end,
			desc = "lsp hover doc",
			mode = "n",
		},
		{
			"<leader>gd",
			function()
				vim.lsp.buf.definition()
			end,
			desc = "lsp go definition",
			mode = "n",
		},
		{
			"<leader>ca",
			function()
				vim.lsp.buf.code_action()
			end,
			desc = "lsp code action",
			mode = "n",
		},
		{
			"<F2>",
			function()
				vim.lsp.buf.rename()
			end,
			desc = "lsp rename",
			mode = "n",
		},
	},
}
