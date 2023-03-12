local C = require "astronvim.utils.status".env.fallback_colors

local options = {
  opt = {
    background = "dark",
    foldlevel = 1,
  },
  g = {
    flat = true,
    colors = {
      bg        = C.bg,
      fg        = C.black,
      primary   = C.blue,
      secondary = C.white,
    },
    theme_style = "dark",
  }
}

local extras_ok, extras = pcall(require, "user.extra-options")
if extras_ok then
  return vim.tbl_deep_extend("force", options, extras)
else
  return options
end
