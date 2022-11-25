if vim.o.background == "light" then
  return {
    CursorLine = { bg = "#f5f5f5" },
    NeoTreeCursorLine = { bg = "#f5f5f5" },
    NeoTreeTabActive = { fg = "#9b77cf", bg = "#fafafa", bold = true },
    NeoTreeTabInactive = { fg = "#777777", bg = "#fafafa" },
    NeoTreeWinSeparator = { fg = "#fafafa", bg = "#fafafa" },
  }
end
