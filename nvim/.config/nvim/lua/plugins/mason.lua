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
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		cmd = {
			"MasonUpdate",
			"MasonInstall",
		},
		opts = {
			ensure_installed = { "lua_ls" },
		},
	},
}
