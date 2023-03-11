return {
  "pwntester/octo.nvim",
  cmd = "Octo",
  opts = {
    mappings = {
      pull_request = {
        add_comment = { lhs = "<space>gc", desc = "Add comment" },
        add_label = { lhs = "<space>gl", desc = "Add label" },
        reload = { lhs = "<C-r>", desc = "Reload PR" },
        reopen_issue = { lhs = "<space>gO", desc = "Reopen PR" },
        close_issue = { lhs = "<space>gC", desc = "Close PR" },
        list_changed_files = { lhs = "<space>gf", desc = "Changed files" },
        open_in_browser = { lhs = "<space>gb", desc = "Open PR in browser" },
      },
    },
  },
}
