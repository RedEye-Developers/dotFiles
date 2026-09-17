-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set

set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
set("n", "<A-,>", "<CMD>BufferLineMovePrev<CR>", { desc = "move the buffer left side" })
set("n", "<A-.>", "<CMD>BufferLineMoveNext<CR>", { desc = "move the buffer right side" })
set("n", "<A-0>", "<CMD>BufferLineGoToBuffer 0<CR>")
set("n", "<A-1>", "<CMD>BufferLineGoToBuffer 1<CR>")
set("n", "<A-2>", "<CMD>BufferLineGoToBuffer 2<CR>")
set("n", "<A-3>", "<CMD>BufferLineGoToBuffer 3<CR>")
set("n", "<A-4>", "<CMD>BufferLineGoToBuffer 4<CR>")
set("n", "<A-5>", "<CMD>BufferLineGoToBuffer 5<CR>")
set("n", "<A-6>", "<CMD>BufferLineGoToBuffer 6<CR>")
set("n", "<A-7>", "<CMD>BufferLineGoToBuffer 7<CR>")
set("n", "<A-8>", "<CMD>BufferLineGoToBuffer 8<CR>")
set("n", "<A-9>", "<CMD>BufferLineGoToBuffer 9<CR>")
