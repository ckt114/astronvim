function _G.hl(colors)
  local bg = vim.g.bg
  local fg = vim.g.fg
  local cursorbg = vim.o.background == "dark" and not vim.g.flat and colors.NeoTreeBackground or colors.VertSplit
  local neotreebg = vim.g.flat and vim.g.bg or colors.NeoTreeBackground
  local neotreecursorbg = vim.o.background == "dark" and not vim.g.flat and vim.g.bg or colors.VertSplit
  local virtsplitbg = not vim.g.flat and vim.g.bg or colors.VertSplit
  return {
    CursorLine = { bg = cursorbg },
    CursorLineNr = { bg = colors.CursorLineNr },

    NeoTreeCursorLine   = { bg = neotreecursorbg },
    NeoTreeDotfile      = { fg = colors.NeoTreeDotfile },
    NeoTreeTabActive    = { bg = neotreebg, fg = fg, bold = true },
    NeoTreeTabInactive  = { bg = neotreebg, fg = "#777777" },
    NeoTreeWinSeparator = { link = "VertSplit" },

    NeoTreeNormal      = { bg = neotreebg },
    NeoTreeNormalNC    = { bg = neotreebg },
    NeoTreeEndOfBuffer = { bg = neotreebg },

    VertSplit = { bg = bg, fg = virtsplitbg },
  }
end
