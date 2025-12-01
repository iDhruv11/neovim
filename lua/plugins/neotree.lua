return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- show filtered items
        hide_dotfiles = false, -- do NOT hide .git, .config, etc
        hide_gitignored = false,
        hide_hidden = false,
        never_show = {}, -- remove .git from force-hidden list
      },
    },
  },
}
