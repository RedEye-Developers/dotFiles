local map = LazyVim.safe_keymap_set
local func = require("config.functions")

map({"n"}, "<leader>fc", func.open_config_files, { desc = "Find Config File" })
