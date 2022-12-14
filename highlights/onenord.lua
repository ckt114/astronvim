if vim.o.background == "light" then
  return hl({
    VertSplit = "#ebebeb",
  })
else
  return hl({
    NeoTreeBackground = "#252b35",
    VertSplit         = "#303744",
  })
end
