return {
	"nvim-neorg/neorg",
	dependencies = {
		{
			"nvim-neorg/tree-sitter-norg",
			lazy = true,
		},
		"nvim-neorg/tree-sitter-norg-meta",
	},
	version = "*", -- Pin Neorg to the latest stable release
	cmd = { "Neorg" },
	run = ":Neorg sync-parsers", -- Synchronize the parsers when Neorg is installed or updated
	init = function()
		vim.opt.rtp:append(vim.fn.stdpath("data") .. "/lazy-rocks/tree-sitter-norg-meta/lib/lua/5.1")
	end,
	opts = {
		load = {
			["core.defaults"] = {},
			["core.concealer"] = {}, -- We added this line!
			["core.presenter"] = {
				config = {
					zen_mode = "zen-mode",
				},
			},
			["core.dirman"] = {
				config = {
					workspaces = {
						notes = "~/Documents/Neorg/notes",
						projects = "~/Documents/Neorg/projects",
						learning = "~/Documents/Neorg/learning",
					},
				},
			},
		},
	},
	keys = {
		{ "<C-Enter>", "<Plug>(neorg.esupports.hop.hop-link)", desc = "Open Neorg Link" },
	},
}
