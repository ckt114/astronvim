if vim.g.theme_style == "deep" then
  return hl({
    NeoTreeBackground = "#171e29",
    NeoTreeDotfile    = "#c6a766",
    VertSplit         = "#131b24",
  })
else
  return hl({
    NeoTreeBackground = "#f7f7f7",
    VertSplit         = "#ebebeb",
  })
end
