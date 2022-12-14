if vim.o.background == "light" then
  return hl({
    NeoTreeBackground = "#f7f7f7",
    VertSplit         = "#ebebeb",
  })
else
  return hl({
    NeoTreeBackground = "#23262d",
    VertSplit         = "#2f343d",
  })
end
