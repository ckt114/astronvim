function _G.hl(colors)
  local bg           = vim.g.colors.bg
  local primary      = vim.g.colors.primary
  local flat         = vim.g.flat
  local cursorbg     = colors.CursorBg or vim.o.background == "dark" and not flat and colors.TreeBackground or
      colors.VertSplit
  local cursornrbg   = colors.CursorLineNr
  local hiddenfg     = colors.HiddenFile
  local treebg       = flat and bg or colors.TreeBackground
  local treecursorbg = colors.CursorBg or vim.o.background == "dark" and not flat and bg or colors.VertSplit
  local virtsplitbg  = not flat and bg or colors.VertSplit

  return {
    CursorLine           = { bg = cursorbg },
    CursorLineNr         = { bg = cursornrbg },
    NeoTreeCursorLine    = { bg = treecursorbg },
    HiddenFile           = { fg = hiddenfg },
    NeoTreeNormal        = { bg = treebg },
    NeoTreeNormalNC      = { bg = treebg },
    NeoTreeEndOfBuffer   = { bg = treebg },
    NeoTreeTabActive     = { bg = treebg, fg = primary, bold = true },
    NeoTreeTabInactive   = { bg = treebg, fg = "#777777" },
    NeoTreeWinSeparator  = { link = "VertSplit" },
    NvimTreeCursorLine   = { bg = treecursorbg },
    NvimTreeGitIgnored   = { fg = hiddenfg },
    NvimTreeFileIgnored  = { fg = hiddenfg },
    NvimTreeNormal       = { bg = treebg },
    NvimTreeNormalNC     = { bg = treebg },
    NvimTreeEndOfBuffer  = { bg = treebg },
    NvimTreeWinSeparator = { link = "VertSplit" },
    OctoEditable         = { bg = bg },
    TabLineFill          = { bg = bg },
    VertSplit            = { bg = bg, fg = virtsplitbg },
  }
end
