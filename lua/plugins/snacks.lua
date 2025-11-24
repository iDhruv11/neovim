return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          grep = {
            prefer_git = false, -- << forwce ripgrep ALWAYS
          },
        },
      },
    },
  },
}
