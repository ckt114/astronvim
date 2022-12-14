local highlights = function()
  local bg      = vim.g.colors.bg
  local primary = vim.g.colors.primary

  return {
    background = {
      bg = bg,
    },
    buffer_selected = {
      bg = bg,
      fg = primary,
      bold = true,
    },
    buffer_visible = {
      bg = bg,
    },
    close_button = {
      bg = bg,
    },
    duplicate = {
      bg = bg,
    },
    duplicate_selected = {
      bg = bg,
      fg = primary,
      bold = true,
    },
    duplicate_visible = {
      bg = bg,
    },
    fill = {
      bg = bg,
    },
    indicator_selected = {
      fg = primary,
      bg = bg,
    },
    indicator_visible = {
      bg = bg,
    },
    modified = {
      bg = bg,
    },
    separator = {
      bg = bg,
      fg = bg,
    },
    separator_visible = {
      bg = bg,
      fg = bg,
    },
  }
end

return {
  highlights = highlights,
  options = {
    indicator = {
      icon = "",
      style = "icon"
    },
    tab_size = 0,
    offsets = {
      {
        filetype = "neo-tree", -- NvimTree or neo-tree
        -- highlight = "Directory",
        separator = false,
        text = "(╯°o°）╯︵ ┻━┻",
        text_align = "center",
      },
    },
    separator_style = "thin",
    show_buffer_icons = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    sort_by = "directory",
  },
}
