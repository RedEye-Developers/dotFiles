-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.lsp_config")
require("config.autocmds")
require("oil").setup()
require("mason").setup()
vim.opt.clipboard = "unnamedplus"
