-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- hello 
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Auto-save on entering normal mode
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = "*",
  callback = function()
    if vim.bo.modified and not vim.bo.readonly and vim.fn.expand("%") ~= "" and vim.bo.buftype == "" then
      vim.cmd("silent! write")
    end
  end,
  desc = "Auto-save file when leaving insert mode",
})

-- Italicize Keywords
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- Make TS keywords italic
    vim.api.nvim_set_hl(0, "@keyword", { italic = true })
    vim.api.nvim_set_hl(0, "@keyword.function", { italic = true })
    vim.api.nvim_set_hl(0, "@keyword.import", { italic = true })
    vim.api.nvim_set_hl(0, "@keyword.export", { italic = true })

    -- Make types italic (TypeScript, TSX)
    vim.api.nvim_set_hl(0, "@type", { italic = true })
    vim.api.nvim_set_hl(0, "@type.builtin", { italic = true })

    -- Make React component names italic
    vim.api.nvim_set_hl(0, "@function", { italic = false })
    vim.api.nvim_set_hl(0, "@function.call", { italic = false })

    -- Props, variables stay normal
    vim.api.nvim_set_hl(0, "@variable", { italic = false })
    vim.api.nvim_set_hl(0, "@property", { italic = false })
  end,
})

-- Force wrapping for any floating window
vim.api.nvim_create_autocmd("BufWinEnter", {
  callback = function()
    if vim.api.nvim_win_get_config(0).relative ~= "" then
      vim.wo.wrap = true
      vim.wo.linebreak = true
    end
  end,
})
