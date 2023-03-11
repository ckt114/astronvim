local options = {
  opt = {
    foldlevel = 1,
  },
}

local extras_ok, extras = pcall(require, "user.extra-options")
if extras_ok then
  return vim.tbl_deep_extend("force", options, extras)
end
