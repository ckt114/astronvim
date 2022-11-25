if vim.o.background == "dark" then
  return {
    CursorLine = { bg = "#19212e" },
    NeoTreeCursorLine = { bg = "#19212e" },
    NeoTreeDotfile = { fg = "#c07e3f" },
    NeoTreeTabActive = { fg = "#dd9146", bg = "#131b24", bold = true },
    NeoTreeTabInactive = { fg = "#777777", bg = "#131b24" },
    NeoTreeWinSeparator = { fg = "#19212e", bg = "#19212e" },
  }
end
