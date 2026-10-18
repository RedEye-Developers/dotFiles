local func = {}

function func.open_config_files()
   Snacks.picker.files({
    cwd = vim.fn.stdpath("config"),
  })
end

return func
