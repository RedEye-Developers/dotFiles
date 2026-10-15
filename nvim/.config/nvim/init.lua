vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.opt.clipboard = "unnamedplus"
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "bg" })

require("config.lazy")
