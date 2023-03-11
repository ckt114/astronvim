local colors     = require("user.utils.colors")

local fg         = vim.g.colors.fg
local bg         = vim.g.colors.bg
local primary    = vim.g.colors.primary
local secondary  = vim.g.colors.secondary or bg
local focused    = colors.new(primary):complementary():to_rgb()
local slant      = vim.g.slant

local components = {
  space = {
    text = " ",
    truncation = { priority = 1 },
  },
  separator_left = {
    text = function(buf)
      return slant and not buf.is_first and "" or ""
    end,
    fg = secondary,
    truncation = { priority = 1 },
  },
  separator_right = {
    text = function(buf)
      return slant and not buf.is_last and "" or not buf.is_last and " " or ""
    end,
    fg = secondary,
    bg = function(buf)
      return not slant and secondary
    end,
    truncation = { priority = 1 },
  },
  pointer = {
    text = function(buf)
      return buf.is_focused and " " or ""
    end,
    truncation = { priority = 2 },
  },
  unique_prefix = {
    text = function(buf)
      return buf.unique_prefix
    end,
    truncation = { priority = 1, direction = "left" },
  },
  filename = {
    text = function(buf)
      return buf.filename
    end,
    truncation = { priority = 3 },
  },
}

return {
  "noib3/nvim-cokeline",
  commit = "501f93ec84af0d505d95d3827cad470b9c5e86dc",
  lazy = false,
  opts = {
    show_if_buffers_are_at_least = 2,
    rendering = { max_buffer_width = 30 },
    default_hl = {
      fg = fg,
      bg = function(buf)
        return buf.is_focused and focused or primary
      end,
    },
    components = {
      components.separator_left,
      components.space,
      components.pointer,
      components.unique_prefix,
      components.filename,
      components.space,
      components.separator_right,
    },
  },
}
