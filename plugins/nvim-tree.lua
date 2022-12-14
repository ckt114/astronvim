require("nvim-tree").setup {
  actions             = {
    open_file = {
      resize_window = true
    }
  },
  filters             = {
    dotfiles = true,
  },
  renderer            = {
    add_trailing = true,
    highlight_git = true,
    icons = {
      git_placement = "after",
    },
    indent_markers = {
      enable = true
    },
  },
  update_focused_file = {
    enable = true,
    update_root = true,
  },
  view                = {
    centralize_selection = true,
    mappings = {
      list = {
        { key = "<Tab>", action = "" },
        { key = "?", action = "toggle_help" },
        { key = "-", action = "split" },
        { key = "|", action = "vsplit" },
        { key = "C", action = "cd" },
      }
    }
  }
}
