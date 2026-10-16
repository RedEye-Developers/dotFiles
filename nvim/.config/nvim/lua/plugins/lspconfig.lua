return {
	"neovim/nvim-lspconfig",
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

    local lua_ls = {
			capabilities = capabilities,
    }

    local tailwindcss = {
			capabilities = capabilities,
      filetypes_include = { "razor" },
      settings = {
        tailwindCSS = {
          includeLanguages = {
            razor = "html",
          },
          experimental = {
            configFile = "/home/redeye/DevProjects/DigitalVault/DigitalVault.Blazor/DigitalVault.Blazor/Styles/styles.css",
          },
        },
      },
    }

    local typos_lsp = {
      cmd = { "typos-lsp" },
    }

		vim.lsp.config("lua_ls", lua_ls)
    vim.lsp.config("tailwindcss", tailwindcss)
    vim.lsp.config("typos_lsp", typos_lsp)

		vim.lsp.enable("lua_ls")
    vim.lsp.enable("tailwindcss")
    vim.lsp.enable("typos_lsp")
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
