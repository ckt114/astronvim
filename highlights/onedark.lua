if vim.o.background == "dark" then
  local bg1 = "#131b24"
  local bg2 = "#19212e"
  local fg = "#dd9146"
  local dotfile = "#c07e3f"
  local inactive = "#777777"

  _G.bufferline_highlights = hl.bufferline_hl(fg, bg2)
  return {
    CursorLine = { bg = bg1 },
    NeoTreeCursorLine = { bg = bg2 },
    NeoTreeDotfile = { fg = dotfile },
    NeoTreeTabActive = { fg = fg, bg = bg1, bold = true },
    NeoTreeTabInactive = { fg = inactive, bg = bg1 },
    NeoTreeWinSeparator = { fg = bg2, bg = bg2 },
  }
end
