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

-- Remove ALL bold + apply your italic rules
-- vim.api.nvim_create_autocmd("ColorScheme", {
--   callback = function()
--     vim.api.nvim_set_hl(0, "@keyword", { italic = true })
--     vim.api.nvim_set_hl(0, "@keyword.function", { italic = true })
--     vim.api.nvim_set_hl(0, "@keyword.import", { italic = true })
--     vim.api.nvim_set_hl(0, "@keyword.export", { italic = true })
--
--     vim.api.nvim_set_hl(0, "@type", { italic = true })
--     vim.api.nvim_set_hl(0, "@type.builtin", { italic = true })
--
--     -- React components / function names NOT italic
--     vim.api.nvim_set_hl(0, "@function", { italic = false })
--     vim.api.nvim_set_hl(0, "@function.call", { italic = false })
--
--     vim.api.nvim_set_hl(0, "@variable", { italic = false })
--     vim.api.nvim_set_hl(0, "@property", { italic = false })
--   end,
-- })

-- Force wrapping for any floating window
vim.api.nvim_create_autocmd("BufWinEnter", {
  callback = function()
    if vim.api.nvim_win_get_config(0).relative ~= "" then
      vim.wo.wrap = true
      vim.wo.linebreak = true
    end
  end,
})

-- VSCode-like TXT mode
vim.api.nvim_create_autocmd("FileType", {
  pattern = "text",
  callback = function()
    vim.diagnostic.enable(false)
    -- Disable CMP (completion)
    local ok, cmp = pcall(require, "cmp")
    if ok then
      cmp.setup.buffer({ enabled = false })
    end

    --------------------------------------------------------
    -- 2. Make EVERYTHING fontColor + italic (like VSCode screenshot)
    --------------------------------------------------------
    local fontColor = "#c5c9c7" -- pick your VSCode fontColor shade

    -- Editor text
    vim.api.nvim_set_hl(0, "Normal", { fg = fontColor, italic = true })
    vim.api.nvim_set_hl(0, "NormalFloat", { fg = fontColor, italic = true })

    -- Comments (some txt syntax providers mark bullets as comments)
    vim.api.nvim_set_hl(0, "Comment", { fg = fontColor, italic = true })

    -- Disable hiding / ghost text from cmp
    vim.api.nvim_set_hl(0, "CmpGhostText", { fg = "NONE" })

    --------------------------------------------------------
    -- 3. Stop treesitter from trying to highlight anything
    --------------------------------------------------------
    vim.cmd("syntax off")
    vim.cmd("setlocal nospell")
  end,
})

-- CursorLine highlight for UI tools only (snacks, grep, NeoTree, telescope)
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3c3937" }) -- enabled globally for UIs

local ui_ft = {
  "snacks",
  "neo-tree",
  "TelescopePrompt",
  "TelescopeResults",
  "lazy",
  "qf",
  "Trouble",
  "help",
}

local function is_ui(ft)
  for _, x in ipairs(ui_ft) do
    if ft == x or ft:match(x) then
      return true
    end
  end
  return false
end

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
  callback = function(e)
    local ft = vim.bo[e.buf].filetype

    -- LazyVim dashboard buffers often have ft="" or "lazyvim"
    if ft == "" or ft == "dashboard" or ft == "lazyvim" then
      vim.opt_local.cursorline = false
      return
    end

    if is_ui(ft) then
      vim.opt_local.cursorline = true -- enable for fuzzy/UI
    else
      vim.opt_local.cursorline = false -- disable for normal editor
    end
  end,
})
