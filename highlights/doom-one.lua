if vim.o.background == "light" then
  return hl({
    VertSplit = "#ebebeb",
  })
else
  return hl({
    NeoTreeBackground = "#23262d",
    VertSplit         = "#2f343d",
  })
end
