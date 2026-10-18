local map = vim.keymap.set
local func = require("config.functions")

map({"n"}, "<leader>fc", func.open_config_files, { desc = "Find Config File" })
