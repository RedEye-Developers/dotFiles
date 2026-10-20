local func = {}

function func.open_config_files()
	Snacks.picker.files({
		cwd = vim.fn.stdpath("config"),
	})
end

local function set_tab_spacing(space)
	vim.opt.tabstop = space
	vim.opt.shiftwidth = space
	vim.opt.softtabstop = space
end

function func.set_tab_space_by_file_type(file_type)
	if file_type == "cs" or file_type == "razor" then
		set_tab_spacing(4)
		return
	end

	set_tab_spacing(2)
end

return func
