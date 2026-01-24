return {
  -- gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    config = function()
      require("gruvbox").setup({
        contrast = "hard",
        dim_inactive = false,
        italic = {
          strings = false,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        palette_overrides = {
          -- Dull Version
          -- bright_red = "#e2534c",
          -- bright_orange = "#ea7e40",
          -- bright_yellow = "#e0ac32",

          -- More dull
          bright_red = "#ea6b64",
          bright_orange = "#ea894f",
          bright_yellow = "#dba655",

          -- Dull green Option 1
          -- bright_green = "#c5c850",

          -- More Dull green Option 2
          bright_green = "#acbb67",

          -- Brightest: comment out everything
          dark0_hard = "#1c2020",
        },
        overrides = {
          --   -- keep types normal (not bold)
          -- ["@type"] = { bold = true },
          -- ["@type.builtin"] = { bold = true },
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

      -- vim.o.background = "dark"
      -- vim.cmd.colorscheme("gruvbox")
      --
      -- -- Cursor for gruvbox only
      -- vim.opt.guicursor = table.concat({
      --   "n-v-c:block-CursorNormal",
      --   "i:block-CursorInsert",
      --   "r-cr:block-CursorNormal",
      -- }, ",")
      --
      -- -- Cursor block color
      -- vim.api.nvim_set_hl(0, "CursorNormal", { bg = "#dac59c", fg = "#1e1e2e" })
      -- vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#ffffff", fg = "#1e1e2e" })
      --
      -- -- Line highlight color for file buffers (for fzf, grep, neotree see config/autocmds.lua)
      -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" }) -- or "#1e1e1e", etc
      --
      -- -- CursorLine highlight for UI tools only (snacks, grep, NeoTree, telescope)
      -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3c3937" }) -- enabled globally for UIs
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
      -- require("catppuccin").setup(opts)
      -- vim.cmd.colorscheme("catppuccin")
      -- vim.opt.guicursor = table.concat({
      --   "n-v-c:block-CursorNormal",
      --   "i:block-CursorInsert",
      --   "r-cr:block-CursorNormal",
      -- }, ",")
      --
      -- -- Set cursor highlight groups
      -- vim.api.nvim_set_hl(0, "CursorNormal", { bg = "#9fb5fd", fg = "#1e1e2e" })
      -- vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#ecf0ff", fg = "#1e1e2e" })
      --
      -- -- Line highlight color for file buffers (for fzf, grep, neotree see config/autocmds.lua)
      -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" }) -- or "#1e1e1e", etc
      --
      -- -- -- CursorLine highlight for UI tools only (snacks, grep, NeoTree, telescope)
      -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#45475b" }) -- enabled globally for UIs
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
      -- require("tokyonight").setup(opts)
      -- vim.cmd.colorscheme("tokyonight")
      -- vim.opt.guicursor = table.concat({
      --   "n-v-c:block-CursorNormal",
      --   "i:block-CursorInsert",
      --   "r-cr:block-CursorNormal",
      -- }, ",")

      -- -- Set cursor highlight groups
      -- vim.api.nvim_set_hl(0, "CursorNormal", { bg = "#9fb5fd", fg = "#1e1e2e" })
      -- vim.api.nvim_set_hl(0, "CursorInsert", { bg = "#ecf0ff", fg = "#1e1e2e" })

      -- -- Line highlight color for file buffers (for fzf, grep, neotree see config/autocmds.lua)
      -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" }) -- or "#1e1e1e", etc
    end,
  },
  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanso").setup({
        bold = false,
        italics = false,
        commentStyle = { italic = true },
        keywordStyle = { italic = true },
        background = {
          dark = "zen",
        },
        foreground = "saturated",

        -- Overrides must be a function that returns a table of highlights
        overrides = function(colors)
          return {
            CursorNormal = { bg = "#9ba8bd", fg = "#000000" },
            CursorInsert = { bg = "#ecf0ff", fg = "#000000" },
            -- CursorLine = { bg = "#45475b" },
            -- Add these lines to remove the underline from LSP references
            LspReferenceText = { bg = "None", underline = false },
            LspReferenceWrite = { bg = "None", underline = false },
            LspReferenceRead = { bg = "None", underline = false },
          }
        end,
      })

      -- 1. Load the colorscheme
      vim.cmd.colorscheme("kanso-zen")

      -- 2. Set the cursor behavior
      vim.opt.guicursor = table.concat({
        "n-v-c:block-CursorNormal",
        "i:block-CursorInsert",
        "r-cr:block-CursorNormal",
      }, ",")

      -- 3. Ensure termguicolors is on for Kitty to see these hex codes
      vim.opt.termguicolors = true
    end,
  },
}
