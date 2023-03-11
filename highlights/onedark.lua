if vim.g.theme_style == "deep" then
  return hl({
    TreeBackground = "#171e29",
    HiddenFile     = "#c6a766",
    VertSplit      = "#131b24",
  })
else
  return hl({
    TreeBackground = "#f7f7f7",
    VertSplit      = "#ebebeb",
  })
end
