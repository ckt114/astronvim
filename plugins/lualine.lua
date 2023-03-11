local empty = require("lualine.component"):extend()

local colors = {
  fg        = vim.g.colors.fg,
  secondary = vim.g.colors.secondary or vim.g.colors.bg,

  error    = "#ca1243",
  modified = "#ffe000",
  warning  = "#fe8019",
}
local slant  = vim.g.slant


function empty:draw(default_highlight)
  self.status = ""
  self.applied_separator = ""
  self:apply_highlights(default_highlight)
  self:apply_section_separators()
  return self.status
end

-- Put proper separators and gaps between components in sections
local function process_sections(sections)
  for name, section in pairs(sections) do
    local left = name:sub(9, 10) < "x"
    for pos = 1, name ~= "lualine_z" and #section or #section - 1 do
      table.insert(section, pos * 2, { empty, color = { fg = colors.secondary, bg = colors.secondary } })
    end
    for id, comp in ipairs(section) do
      if type(comp) ~= "table" then
        comp = { comp }
        section[id] = comp
      end
      comp.separator = left and { right = slant and "" or " " } or { left = slant and "" or " " }
    end
  end
  return sections
end

local function search_result()
  if vim.v.hlsearch == 0 then
    return ""
  end
  local last_search = vim.fn.getreg("/")
  if not last_search or last_search == "" then
    return ""
  end
  local searchcount = vim.fn.searchcount { maxcount = 9999 }
  return last_search .. "(" .. searchcount.current .. "/" .. searchcount.total .. ")"
end

local function modified()
  if vim.bo.modified then
    return "+"
  elseif vim.bo.modifiable == false or vim.bo.readonly == true then
    return "-"
  end
  return ""
end

require("lualine").setup {
  options = {
    theme = "auto",
    component_separators = "",
    section_separators = { left = slant and "" or " ", right = slant and "" or " " },
  },
  sections = process_sections {
    lualine_a = { "mode" },
    lualine_b = {
      "branch",
      "diff",
      {
        "diagnostics",
        source = { "nvim" },
        sections = { "error" },
        diagnostics_color = { error = { bg = colors.error, fg = colors.secondary } },
      },
      {
        "diagnostics",
        source = { "nvim" },
        sections = { "warn" },
        diagnostics_color = { warn = { bg = colors.warning, fg = colors.secondary } },
      },
      { "filename", file_status = false, path = 1 },
      { modified, color = { fg = colors.fg, bg = colors.modified } },
      {
        "%w",
        cond = function()
          return vim.wo.previewwindow
        end,
      },
      {
        "%r",
        cond = function()
          return vim.bo.readonly
        end,
      },
      {
        "%q",
        cond = function()
          return vim.bo.buftype == "quickfix"
        end,
      },
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { search_result, "filetype" },
    lualine_z = { "%l:%c", "%p%%/%L" },
  },
  inactive_sections = {
    lualine_c = { "%f %y %m" },
    lualine_x = {},
  },
}
