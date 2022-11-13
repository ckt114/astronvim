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

  --[[
  vim.api.nvim_create_augroup("buffread", {})
  vim.api.nvim_create_autocmd("BufRead", {
    desc = "Buffer read settings",
    group = "buffread",
    callback = function()
      vim.cmd "set nu rnu"
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

  vim.lsp.set_log_level("off")
end
