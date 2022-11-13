local colorscheme = astronvim.user_plugin_opts("colorscheme", nil, false)
local background  = vim.o.background

if colorscheme == "adwaita" and background == "light" then
  vim.cmd("highlight NeoTreeTabInactive guifg=#777777")
  vim.cmd("highlight NeoTreeWinSeparator guifg=#fcfcfc guibg=#fcfcfc")
elseif colorscheme == "ayu-mirage" and background == "dark" then
  vim.cmd("highlight CursorLine guibg=#191e2a")
  vim.cmd("highlight NeoTreeCursorLine guibg=#191e2a")
  vim.cmd("highlight NeoTreeDotfile guifg=#c6a766")
  vim.cmd("highlight NeoTreeTabActive guifg=#ffd580 gui=bold")
  vim.cmd("highlight NeoTreeTabInactive guifg=#777777")
  vim.cmd("highlight NeoTreeWinSeparator guifg=#1f2430 guibg=#1f2430")
elseif colorscheme == "doom-one" and background == "light" then
  vim.cmd("highlight NeoTreeTabActive guifg=#b751b6 guibg=#fafafa gui=bold")
  vim.cmd("highlight NeoTreeTabInactive guifg=#777777")
  vim.cmd("highlight NeoTreeWinSeparator guifg=#fafafa guibg=#fafafa")
elseif colorscheme == "onedark" and background == "dark" then
  vim.cmd("highlight CursorLine guibg=#19212e")
  vim.cmd("highlight NeoTreeCursorLine guibg=#19212e")
  vim.cmd("highlight NeoTreeDotfile guifg=#c07e3f")
  vim.cmd("highlight NeoTreeTabActive guifg=#dd9146 guibg=#131b24 gui=bold")
  vim.cmd("highlight NeoTreeTabInactive guifg=#777777 guibg=#131b24")
  vim.cmd("highlight NeoTreeWinSeparator guifg=#19212e guibg=#19212e")
elseif colorscheme == "onedarkpro" and background == "light" then
  vim.cmd("highlight CursorLine guibg=#f5f5f5")
  vim.cmd("highlight NeoTreeCursorLine guibg=#f5f5f5")
  vim.cmd("highlight NeoTreeTabActive guifg=#9b77cf guibg=#fafafa gui=bold")
  vim.cmd("highlight NeoTreeTabInactive guifg=#777777 guibg=#fafafa")
  vim.cmd("highlight NeoTreeWinSeparator guifg=#fafafa guibg=#fafafa")
elseif colorscheme == "onenord" and background == "light" then
  vim.cmd("highlight NeoTreeTabActive guifg=#387ac5 guibg=#f7f8fa gui=bold")
  vim.cmd("highlight NeoTreeTabInactive guifg=#777777 guibg=#f7f8fa")
  vim.cmd("highlight NeoTreeWinSeparator guifg=#f7f8fa guibg=#f7f8fa")

end

return {
  default_component_configs = {
    name = {
      trailing_slash = true,
    },
  },
  source_selector = {
    separator = "",
  },
  window = {
    mappings = {
      ["<space>"] = false,
      ["-"] = "open_split",
      ["|"] = "open_vsplit",
      ["z"] = false,
    }
  },
  filesystem = {
    window = {
      mappings = {
        ["/"] = "fuzzy_finder_directory",
        C = "set_root",
        F = "fuzzy_finder",
        O = "navigate_up",
      },
    },
  },
}
