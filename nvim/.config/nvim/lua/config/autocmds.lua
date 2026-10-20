local func = require("config.functions")

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "razor", "cs", "lua" },
	callback = function(args)
    func.set_tab_space_by_file_type(args.match)
  end,
})
