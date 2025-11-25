-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Map Ctrl+Backspace to delete previous word in insert mode
vim.keymap.set("i", "<C-H>", "<C-W>", { noremap = true })
-- Delete
vim.keymap.set("i", "<A-d>", "<C-o>dw", { noremap = true })

-- open terminal vetically as a window
vim.keymap.set("n", "<leader>tt", function()
  vim.cmd("vsplit") -- copy same buffer vertically
  vim.cmd("terminal") -- turn buffer into terminal
  vim.bo.buflisted = false -- terminal buffers shouldn't appear in buffer lists
  vim.wo.number = true -- enable number for terminal window
  vim.wo.relativenumber = true
end, { desc = "Vertical Terminal" })

-- open terminal horizontally as a window
vim.keymap.set("n", "<leader>tT", function()
  vim.cmd("split") -- copy same buffer horizontally
  vim.cmd("terminal") -- turn buffer into terminal
  vim.bo.buflisted = false
  vim.wo.number = true
  vim.wo.relativenumber = true
end, { desc = "Horizontal Terminal" })

-- open terminal in full window
vim.keymap.set("n", "<leader>tn", function()
  vim.cmd("enew") -- empty buffer
  vim.cmd("terminal")
  vim.bo.buflisted = false
  vim.wo.number = true
  vim.wo.relativenumber = true
end, { desc = "Open terminal in new empty buffer" })

-- Make <Esc> exit terminal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

-- Shift-B to go to first non-whitespace char i.e. start of the line where text starts
vim.keymap.set({ "n", "v" }, "B", "^", { noremap = true, silent = true })
-- Shift-E to go to end of line
vim.keymap.set({ "n", "v" }, "E", "$", { noremap = true, silent = true })
