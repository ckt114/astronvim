if astronvim.user_plugin_opts("colorscheme", nil, false) == "ayu-mirage" then
  local bg = "#1f2430"
  local fg = "#ffd580"
  local cursor = "#191e2a"
  local dotfile = "#c6a766"
  local inactive = "#777777"

  _G.bufferline_highlights = hl.bufferline_hl(fg, bg)

  return {
    CursorLine          = { bg = cursor },
    LineNr              = { fg = inactive },
    NeoTreeCursorLine   = { bg = cursor },
    NeoTreeDotfile      = { fg = dotfile },
    NeoTreeTabActive    = { fg = fg, bold = true },
    NeoTreeTabInactive  = { fg = inactive },
    NeoTreeWinSeparator = { fg = bg, bg = bg },
  }
end
