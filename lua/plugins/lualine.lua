return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, {
        function()
          local ff = vim.bo.fileformat
          local enc = vim.bo.fileencoding or vim.o.encoding

          local ff_label = ({
            unix = "UNIX",
            dos = "CRLF",
            mac = "CR",
          })[ff] or ff

          return string.format("%s | %s", enc:upper(), ff_label)
        end,
      })
    end,
  },
}
