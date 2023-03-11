local function alpha_on_bye(cmd)
  local bufs = vim.fn.getbufinfo { buflisted = true }
  vim.cmd(cmd)
  if require("core.utils").is_available "alpha-nvim" and not bufs[2] then
    require("alpha").start(true)
  end
end

return function()
  --[[
  vim.api.nvim_create_autocmd("VimEnter", {
    desc = "Open Neotree automatically",
    callback = function()
      if vim.fn.argc() == 0 then
        vim.cmd "set nornu nonu | Neotree toggle"
      end
    end,
  })
  --]]

  vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight on yank",
    callback = function()
      vim.highlight.on_yank()
    end,
    pattern = "*",
  })

  -- maximize help and show in buffer list
  vim.api.nvim_create_autocmd("BufWinEnter", {
    pattern = "*",
    callback = function(event)
      if vim.bo[event.buf].filetype == "help" then
        vim.cmd.only()
        vim.bo.buflisted = true
      end
    end,
  })

  -- disable numbers for terminals
  vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "*",
    callback = function()
      vim.cmd "set nornu nonu"
      vim.cmd "startinsert"
    end,
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

  -- disable diagnostics for YAML
  vim.api.nvim_create_autocmd("BufEnter", {
    desc = "Disable YAML diagnostics",
    pattern = "*.yaml,*.tftpl",
    callback = function(args)
      vim.diagnostic.disable(args.buf)
    end,
  })

  -- set text width for markdown to 100 chars
  vim.api.nvim_create_autocmd("BufEnter", {
    desc = "Markdown text width",
    pattern = "*.md",
    callback = function()
      vim.cmd "set textwidth=100"
    end,
  })

  vim.filetype.add {
    pattern = {
      [".*yaml.tftpl"] = "yaml",
    },
  }

  vim.on_key(nil, vim.api.nvim_get_namespaces()["auto_hlsearch"])
  vim.cmd("colorscheme " .. vim.g.colors_name)
  vim.lsp.set_log_level("off")
end
