function _G.hl(colors)
  local bg              = vim.g.colors.bg
  local primary         = vim.g.colors.primary
  local flat            = vim.g.flat
  local cursorbg        = vim.o.background == "dark" and not flat and colors.NeoTreeBackground or colors.VertSplit
  local neotreebg       = flat and bg or colors.NeoTreeBackground
  local neotreecursorbg = vim.o.background == "dark" and not flat and bg or colors.VertSplit
  local virtsplitbg     = not flat and bg or colors.VertSplit
  return {
    CursorLine   = { bg = cursorbg },
    CursorLineNr = { bg = colors.CursorLineNr },

    NeoTreeCursorLine   = { bg = neotreecursorbg },
    NeoTreeDotfile      = { fg = colors.NeoTreeDotfile },
    NeoTreeTabActive    = { bg = neotreebg, fg = primary, bold = true },
    NeoTreeTabInactive  = { bg = neotreebg, fg = "#777777" },
    NeoTreeWinSeparator = { link = "VertSplit" },

    NeoTreeNormal      = { bg = neotreebg },
    NeoTreeNormalNC    = { bg = neotreebg },
    NeoTreeEndOfBuffer = { bg = neotreebg },

    TabLineFill = { bg = bg },
    VertSplit   = { bg = bg, fg = virtsplitbg },
  }
end
