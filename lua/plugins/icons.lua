return {
  -- disable mini.icons if present (so it doesn't override stuff)
  {
    "nvim-mini/mini.icons",
    enabled = false,
  },

  -- icon provider for neo-tree + everywhere else
  {
    "nvim-tree/nvim-web-devicons",
    lazy = false,
    priority = 1000,
  },
  {
    "DaikyXendo/nvim-material-icon",
    lazy = false,
    priority = 1000,
    config = function()
      require("nvim-web-devicons").setup({
        color_icons = true,
        variant = "dark",
        override = {
          js = {
            icon = "󰌞",
            color = "#d5ae4e",
            name = "Javascript",
          },
          -- ts = {
          --   icon = "󰛦",
          --   color = "#33a1d9",
          --   name = "Typescript",
          -- },
          --   jsx = {
          --     icon = "󰜈",
          --     color = "#61dafb",
          --     name = "ReactJS",
          --   },
          --   tsx = {
          --     icon = "󰜈",
          --     color = "#61dafb",
          --     name = "ReactTS",
          --   },
          --   json = {
          --     icon = "󰘦",
          --     color = "#cbcb41",
          --     name = "Json",
          --   },
          --   html = {
          --     icon = "󰌝",
          --     color = "#e34c26",
          --     name = "Html",
          --   },
          --   css = {
          --     icon = "󰌜",
          --     color = "#264de4",
          --     name = "Css",
          --   },
          --   scss = {
          --     icon = "",
          --     color = "#c6538c",
          --     name = "Scss",
          --   },
          --   md = {
          --     icon = "󰍔",
          --     color = "#519aba",
          --     name = "Markdown",
          --   },
          --   ["env"] = {
          --     icon = "󰙪",
          --     color = "#8cc665",
          --     name = "Environment",
          --   },
          --   dockerfile = {
          --     icon = "󰡨",
          --     color = "#2496ed",
          --     name = "Dockerfile",
          --   },
          --   lock = {
          --     icon = "󰌾",
          --     color = "#d8d8d8",
          --     name = "Lock",
          --   },
          --   svg = {
          --     icon = "󰜡",
          --     color = "#ffb13b",
          --     name = "Svg",
          --   },
          --   toml = {
          --     icon = "󰅪",
          --     color = "#6b8e23",
          --     name = "Toml",
          --   },
          --   yaml = {
          --     icon = "",
          --     color = "#6b8e23",
          --     name = "Yaml",
          --   },
          --   yml = {
          --     icon = "",
          --     color = "#6b8e23",
          --     name = "Yml",
          --   },
          -- prisma = {
          --   icon = "󰔶",
          --   color = "#ffffff",
          --   name = "Prisma",
          -- },
        },
      })
    end,
  },
}
