if astronvim.user_plugin_opts("colorscheme", nil, false) == "ayu-mirage" then
  return {
    CursorLine          = { bg = "#191e2a" },
    NeoTreeCursorLine   = { bg = "#191e2a" },
    NeoTreeDotfile      = { fg = "#c6a766" },
    NeoTreeTabActive    = { fg = "#ffd580", bold = true },
    NeoTreeTabInactive  = { fg = "#777777" },
    NeoTreeWinSeparator = { fg = "#1f2430", bg = "#1f2430" },
  }
end
