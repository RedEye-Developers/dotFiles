return {
	"GustavEikaas/easy-dotnet.nvim",
	dependencies = { "nvim-lua/plenary.nvim", "folke/snacks.nvim" },
  enabled = true,
  ft = { "cs", "razor" },
	opts = {
		lsp = {
			enhanced_rename = true,
      auto_refresh_codelens = false,
			razor = {
				html = {
					cmd = { "vscode-html-language-server", "--stdio" },
				},
			},
		},
		auto_bootstrap_namespace = {
      enabled = true,
			type = "file_scoped",
		},
  },
}
