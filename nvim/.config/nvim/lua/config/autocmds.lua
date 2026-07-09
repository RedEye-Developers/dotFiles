-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.schedule(function()
      vim.notify("Hi 👋 Welcome RedEye-Developer!", vim.log.levels.ERROR, {
        title = "NeoVim",
        timeout = 1000 * 10,
      })
    end)
  end,
})

vim.api.nvim_create_user_command("Hello", function()
  vim.notify("Hello 👋 RedEye-Developer!", vim.log.levels.ERROR, {
    title = "NeoVim",
    timeout = 1000 * 5,
  })
end, { desc = "Hello Command!" })

vim.api.nvim_create_user_command("CpRootPath", function()
  local root = LazyVim.root()
  vim.fn.setreg("+", root)
  vim.notify("Project Root Path was Copied to Clipboard: " .. root, vim.log.levels.INFO)
end, { desc = "Root Path Copy Command!" })
