if vim.o.background == "light" then
  local bg = "#fcfcfc"
  local fg = "#3d3846"
  local inactive = "#777777"

  _G.bufferline_highlights = hl.bufferline_hl(fg, bg)

  return {
    NeoTreeTabInactive = { fg = inactive },
    NeoTreeWinSeparator = { fg = bg, bg = bg },
  }
end
