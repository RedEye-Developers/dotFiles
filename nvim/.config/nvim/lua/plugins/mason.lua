return {
	{
		"mason-org/mason.nvim",
		cmd = {
			"Mason",
			"MasonUpdate",
			"MasonInstall",
			"MasonUninstall",
			"MasonUninstallAll",
			"MasonLog",
		},
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		event = "VeryLazy",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		cmd = {
			"MasonUpdate",
			"MasonInstall",
		},
		opts = {
			automatic_enable = true,
			ensure_installed = {
				"lua_ls",
				"vimls",
				"jsonls",
				"yamlls",
				"bashls",
				"typos_lsp",
				"tailwindcss",
				"html",
				"ts_ls",
				"roslyn_ls",
			},
		},
	},
}
