--[[
if colorscheme == "adwaita" and background == "light" then
  fg = "#504e55"
  bg = "#fcfcfc"
elseif colorscheme == "ayu-mirage" and background == "dark" then
  fg = "#ffd580"
  bg = "#1f2430"
elseif colorscheme == "doom-one" and background == "light" then
  fg = "#b751b6"
  bg = "#fafafa"
elseif colorscheme == "onedark" and background == "dark" then
  fg = "#dd9146"
  bg = "#19212e"
elseif colorscheme == "onedarkpro" and background == "light" then
  fg = "#9b77cf"
  bg = "#fafafa"
elseif colorscheme == "onenord" and background == "light" then
  fg = "#387ac5"
  bg = "#f7f8fa"
end
--]]

return {
  highlights = bufferline_highlights,
  options = {
    indicator = {
      style = "none"
    },
    offsets = {
      {
        filetype = "neo-tree", -- NvimTree or neo-tree
        -- highlight = "Directory",
        separator = false,
        text = "(╯°o°）╯︵ ┻━┻",
        text_align = "center",
      },
    },
    separator_style = "thin",
    -- show_buffer_icons = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    sort_by = "directory",
  },

}
