local M = {}

---Returns the color set by the current colorscheme for the `attr` attribute of
---the `hlgroup_name` highlight group in hexadecimal format.
---@param hlgroup_name  string
---@param attr  '"fg"' | '"bg"'
---@return string
function M.get_hex(hlgroup_name, attr)
  local hlgroup_ID = vim.fn.synIDtrans(vim.fn.hlID(hlgroup_name))
  local hex = vim.fn.synIDattr(hlgroup_ID, attr)
  return hex ~= "" and hex or "NONE"
end

return M
