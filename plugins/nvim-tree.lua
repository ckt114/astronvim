return {
  "nvim-tree/nvim-tree.lua",
  cmd = "NvimTreeToggle",
  opts = {
    actions = {
      open_file = {
        resize_window = true
      },
    },
    filters = {
      dotfiles = true,
    },
    modified = {
      enable = true,
    },
    renderer = {
      add_trailing = true,
      highlight_git = true,
      highlight_modified = "all",
      icons = {
        git_placement = "after",
        glyphs = {
          git = {
            ignored = "",
          },
        },
      },
      indent_markers = {
        enable = true,
      },
    },
    update_focused_file = {
      enable = true,
      update_root = false,
    },
    view = {
      centralize_selection = true,
      mappings = {
        list = {
          { key = "<Tab>", action = "" },
          { key = "?",     action = "toggle_help" },
          { key = "-",     action = "split" },
          { key = "|",     action = "vsplit" },
          { key = "C",     action = "cd" },
          { key = "e",     action = "expand_all" },
          { key = "E",     action = "collapse_all" },
        },
      },
    },
  },
}
