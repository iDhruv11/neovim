return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        tsserver = {},
      },
      setup = {
        tsserver = function(_, opts)
          require("typescript").setup({ server = opts })
          return true
        end,
      },
    },
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
    },
  },
}
