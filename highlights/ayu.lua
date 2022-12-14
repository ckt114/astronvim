if vim.g.theme_style == "dark" then
  return hl({
    NeoTreeBackground = "#040608",
    NeoTreeDotfile    = "#c6a766",
    VertSplit         = "#19212a",
  })
elseif vim.g.theme_style == "mirage" then
  return hl({
    NeoTreeBackground = "#171b24",
    NeoTreeDotfile    = "#c6a766",
    VertSplit         = "#0a0e13",
  })
else
  return hl({
    VertSplit = "#ebebeb",
  })
end
