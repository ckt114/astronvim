local highlights = {}
if vim.o.background == "light" then
  highlights = hl({
    TreeBackground = "#f7f7f7",
    VertSplit      = "#ebebeb",
  })
end
return vim.tbl_deep_extend("force", highlights, { OctoEditable = { bg = vim.g.colors.bg } })
