if vim.g.theme_style == "dark" then
  return hl({
    TreeBackground = "#040608",
    HiddenFile     = "#c6a766",
    VertSplit      = "#19212a",
  })
elseif vim.g.theme_style == "mirage" then
  return hl({
    TreeBackground = "#171b24",
    HiddenFile     = "#c6a766",
    VertSplit      = "#0a0e13",
  })
else
  return hl({
    TreeBackground = "#f7f7f7",
    VertSplit      = "#ebebeb",
  })
end
