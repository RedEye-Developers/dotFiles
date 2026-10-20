return {
	"nvim-neorg/neorg",
	dependencies = {
		"nvim-neorg/tree-sitter-norg",
		"nvim-neorg/tree-sitter-norg-meta",
	},
  enabled = false,
	version = "*", -- Pin Neorg to the latest stable release
	cmd = { "Neorg" },
	run = ":Neorg sync-parsers", -- Synchronize the parsers when Neorg is installed or updated
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
}
