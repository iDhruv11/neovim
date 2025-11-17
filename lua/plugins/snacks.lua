return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          -- files = {
          --   prefer_git = false,   -- << force non-git ALWAYS
          -- },
          grep = {
            prefer_git = false, -- << force ripgrep ALWAYS
          },
        },
      },
    },
  },
}
