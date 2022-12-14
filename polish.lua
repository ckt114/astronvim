local function alpha_on_bye(cmd)
  local bufs = vim.fn.getbufinfo { buflisted = true }
  vim.cmd(cmd)
  if require("core.utils").is_available "alpha-nvim" and not bufs[2] then
    require("alpha").start(true)
  end
end

return function()
  --[[
  vim.api.nvim_create_augroup("neotree", {})
  vim.api.nvim_create_autocmd("VimEnter", {
    desc = "Open Neotree automatically",
    group = "neotree",
    callback = function()
      if vim.fn.argc() == 0 then
        vim.cmd "set nornu nonu | Neotree toggle"
      end
    end,
  })
  --]]

  vim.api.nvim_create_augroup("yankhighlight", { clear = true })
  vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight on yank",
    group = "yankhighlight",
    callback = function()
      vim.highlight.on_yank()
    end,
    pattern = "*",
  })

  -- open dashboard on last buffer close
  vim.keymap.del("n", "<leader>c")
  if require("core.utils").is_available "bufdelete.nvim" then
    vim.keymap.set("n", "<leader>c", function()
      alpha_on_bye "Bdelete!"
    end, { desc = "Close buffer" })
  else
    vim.keymap.set("n", "<leader>c", function()
      alpha_on_bye "bdelete!"
    end, { desc = "Close buffer" })
  end

  vim.cmd("colorscheme " .. vim.g.colors_name)
  vim.lsp.set_log_level("off")
end
