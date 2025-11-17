-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map Ctrl+Backspace to delete previous word in insert mode
vim.keymap.set("i", "<C-H>", "<C-W>", { noremap = true })
-- Delete 
vim.keymap.set("i", "<A-d>", "<C-o>dw", { noremap = true })
