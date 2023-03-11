if vim.o.background == "light" then
  return hl({
    TreeBackground = "#f7f7f7",
    VertSplit      = "#ebebeb",
  })
else
  return hl({
    TreeBackground = "#23262d",
    VertSplit      = "#2f343d",
  })
end
