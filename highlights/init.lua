_G.hl = {}

function hl.bufferline_hl(fg, bg)
  return {
    background = {
      bg = bg,
    },
    buffer_visible = {
      bg = bg,
    },
    buffer_selected = {
      fg = fg,
      bg = bg,
    },
    close_button = {
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
      fg = bg,
      bg = bg,
    },
    separator_visible = {
      fg = bg,
      bg = bg,
    },
  }
end
