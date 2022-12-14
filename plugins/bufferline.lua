local highlights = function()
  local fg = vim.g.fg
  local bg = vim.g.bg
  return {
    background = {
      bg = bg,
    },
    buffer_selected = {
      bg = bg,
      fg = fg,
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
      fg = fg,
      bold = true,
    },
    duplicate_visible = {
      bg = bg,
    },
    fill = {
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
      style = "none"
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
    show_buffer_icons = true,
    show_buffer_close_icons = false,
    show_close_icon = false,
    sort_by = "directory",
  },
}
