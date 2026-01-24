return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          grep = {
            prefer_git = false, -- force ripgrep ALWAYS
          },
        },
      },
      zen = {
        toggles = {
          dim = false, -- twilight dimming disabled by default (enable using <leader>uD)
          git_signs = true,
        },
      },
    },
  },
}
