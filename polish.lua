return function()
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
    extension = {
      tf = "terraform",
    }
  }

  vim.on_key(nil, vim.api.nvim_get_namespaces()["auto_hlsearch"])
  -- vim.cmd("colorscheme " .. vim.g.colors_name)
  vim.lsp.set_log_level("off")
end
