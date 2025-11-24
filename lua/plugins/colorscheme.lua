return {
  -- gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
        dim_inactive = false,
        palette_overrides = {
          -- Dull Version
          bright_red = "#e2534c",
          bright_orange = "#ea7e40",
          bright_yellow = "#e0ac32",

          -- More dull
          -- bright_red = "#ea6b64",
          -- bright_orange = "#ea894f",
          -- bright_yellow = "#dba655",

          -- Dull green Option 1
          bright_green = "#c5c850",

          -- More Dull green Option 2
          -- bright_green = "#acbb67",

          -- Brightest: comment out everything
          dark0_hard = "#1c2020",
        },
        overrides = {
          --   -- keep types normal (not bold)
          --   ["@type"] = { bold = true },
          --   ["@type.builtin"] = { bold = true },
          -- ["@keyword.storage"] = { bold = false, italic = false },
          -- ["@keyword.exception"] = { bold = false, italic = false },
          -- ["@conditional"] = { bold = false, italic = false },
          -- ["@keyword.operator"] = { bold = false, italic = false },
          -- ["@keyword.return"] = { bold = false, italic = false },
          ["@function.call"] = { link = "GruvboxGreen" },
          ["@method.call"] = { link = "GruvboxGreen" },
          ["@function"] = { link = "GruvboxGreen" },
          ["@function.builtin"] = { link = "GruvboxGreen" },
          ["@function.method"] = { link = "GruvboxGreen" },
          ["@method"] = { link = "GruvboxGreen" },
          -- ["@variable"] = { bold = false, italic = false },
          -- ["@property"] = { bold = false, italic = false },
          -- ["@parameter"] = { bold = false, italic = false },
          -- ["@variable.member"] = { bold = false, italic = false },
          -- ["@string"] = { bold = false, italic = false },
          -- ["@number"] = { bold = false, italic = false },
        },
      })

      vim.o.background = "dark"
      --   vim.cmd.colorscheme("gruvbox")
      --
      --   -- Cursor for gruvbox only
      --   vim.opt.guicursor = table.concat({
      --     "n-v-c:block-CursorNormal",
      --     "i:block-CursorInsert",
      --     "r-cr:block-CursorNormal",
      --   }, ",")
      --
      --   vim.api.nvim_set_hl(0, "CursorNormal", { bg = "#dac59c", fg = "#1e1e2e" })
      --   vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#ffffff", fg = "#1e1e2e" })
    end,
  },
  -- custom catppuccin (comment out if you want default)
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",
      background = { dark = "mocha" },
      integrations = {
        lualine = true,
      },
      color_overrides = {
        mocha = {
          mantle = "#17161e", -- filetree + lualine base color
          base = "#1a1b26", -- editor background
          crust = "#17161e", -- (statusline/windows)
        },
      },
      highlight_overrides = {
        mocha = function(colors)
          return {
            Normal = { bg = colors.base },
            SignColumn = { bg = colors.base },
            CursorLine = { bg = "#282e42" },
            NvimTreeNormal = { bg = colors.mantle },
            NvimTreeNormalNC = { bg = colors.mantle },
            NvimTreeCursorLine = { bg = "#283457" },
            NvimTreeIndentMarker = { fg = "NONE" },
            NvimTreeDirectoryName = { bg = "#282e42" },
            NvimTreeCursorColumn = { bg = "#283457" },
            NvimTreeSelection = { bg = "#283457" },
            NvimTreeOpenedFile = { bg = "#283457" },
            NvimTreeCursor = { bg = "#283457" },
            StatusLine = { bg = colors.mantle, fg = colors.text },
            StatusLineNC = { bg = colors.mantle, fg = colors.overlay2 },
          }
        end,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      -- vim.cmd.colorscheme("catppuccin")
      -- vim.opt.guicursor = table.concat({
      --   "n-v-c:block-CursorNormal",
      --   "i:block-CursorInsert",
      --   "r-cr:block-CursorNormal",
      -- }, ",")
      -- -- Set cursor highlight groups
      -- vim.api.nvim_set_hl(0, "CursorNormal", { bg = "#9fb5fd", fg = "#1e1e2e" })
      -- vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#ecf0ff", fg = "#1e1e2e" })
    end,
  },

  -- Custom Tokyo Night (comment out if you want default, though unlikely you will want to)
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      dark_style = "night",
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { italic = false },
        variables = { italic = false },
      },
      night_brightness = 0,
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      -- vim.cmd.colorscheme("tokyonight")
      -- vim.opt.guicursor = table.concat({
      --   "n-v-c:block-CursorNormal",
      --   "i:block-CursorInsert",
      --   "r-cr:block-CursorNormal",
      -- }, ",")
      -- -- Set cursor highlight groups
      -- vim.api.nvim_set_hl(0, "CursorNormal", { bg = "#9fb5fd", fg = "#1e1e2e" })
      -- vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#ecf0ff", fg = "#1e1e2e" })
    end,
  },
  {
    "webhooked/kanso.nvim",
    lazy = false,
    config = function()
      require("kanso").setup({
        bold = false,
        foreground = {
          dark = "saturated",
        },
      })
      vim.cmd.colorscheme("kanso-zen")
      vim.opt.guicursor = table.concat({
        "n-v-c:block-CursorNormal",
        "i:block-CursorInsert",
        "r-cr:block-CursorNormal",
      }, ",")
      -- Set cursor highlight groups
      vim.api.nvim_set_hl(0, "CursorNormal", { bg = "#cdb374", fg = "#1e1e2e" })
      vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#ecf0ff", fg = "#1e1e2e" })
    end,
  },
}
