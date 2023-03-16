local cmd     = function(command)
  return table.concat({ '<CMD>', command, '<CR>' })
end

local utils   = require("astronvim.utils")
local builtin = require("telescope.builtin")

return {
  n = {
    -- misc
    ["<Tab>"]      = { "<c-w><c-w>", desc = "Move around" },
    ["<leader>c"]  = {
      function()
        local bufs = vim.fn.getbufinfo { buflisted = true }
        require("astronvim.utils.buffer").close(0)
        if utils.is_available "alpha-nvim" and not bufs[2] then require("alpha").start(true) end
      end,
      desc = "Close buffer",
    },
    ["<leader>C"]  = { cmd "CodeActionMenu", desc = "Code action" },
    ["<leader>F"]  = { function() vim.lsp.buf.format(astronvim.lsp.format_opts) end, desc = "Format code" },
    -- cokeline
    ["-"]          = { "<Plug>(cokeline-switch-prev)", desc = "Move buffer left", silent = true },
    ["="]          = { "<Plug>(cokeline-switch-next)", desc = "Move buffer right", silent = true },
    ["<S-h>"]      = { "<Plug>(cokeline-focus-prev)", desc = "Focus left buffer", silent = true },
    ["<S-l>"]      = { "<Plug>(cokeline-focus-next)", desc = "Focus right buffer", silent = true },
    -- git
    ["<leader>gd"] = { function() require("gitsigns").diffthis() end, desc = "Git diff" },
    ["<leader>ge"] = { ":Octo pr edit ", desc = "Edit PR" },
    ["<leader>gg"] = false,
    ["<leader>gh"] = false,
    ["<leader>gl"] = false,
    ["<leader>gL"] = { cmd "Octo pr list", desc = "List PRs" },
    ["<leader>gp"] = false,
    ["<leader>gr"] = { cmd "Octo pr create", desc = "Create PR" },
    ["<leader>gR"] = { cmd "Octo review start", desc = "Review PR" },
    ["<leader>gS"] = { cmd "Octo review submit", desc = "Submit review" },
    ["<leader>gs"] = { function() builtin.git_status() end, desc = "Git status" },
    ["<leader>gt"] = { function() utils.toggle_term_cmd "lazygit" end, desc = "Toggle lazygit" },
    ["<leader>gu"] = false,
    -- nvim-tree
    ["<leader>e"]  = { cmd "NvimTreeToggle", desc = "Explorer" },
    ["<leader>o"]  = { cmd "NvimTreeFocus", desc = "Focus explorer" },
    -- search
    ["<leader>fa"] = { function() builtin.autocommands() end, desc = "Find autocommands" },
    ["<leader>fH"] = { function() builtin.highlights() end, desc = "Find highlights" },
    ["<leader>fo"] = { function() builtin.oldfiles() end, desc = "Find all recent files" },
    ["<leader>fr"] = { function() builtin.oldfiles({ cwd_only = true }) end, desc = "Find recent files" },
    ["<leader>fs"] = { function() builtin.current_buffer_fuzzy_find() end, desc = "Find string in buffer" },
    ["<leader>fO"] = { function() builtin.vim_options() end, desc = "Find options" },
    ["<leader>ft"] = false,
    -- toggle
    ["<leader>tf"] = { cmd "setlocal foldmethod=indent", desc = "Toggle folding" },
    ["<leader>tl"] = false,
    ["<leader>tn"] = false,
    ["<leader>tp"] = false,
    ["<leader>ts"] = { function() require("aerial").toggle() end, desc = "Toggle outline" },
    ["<leader>tt"] = { cmd "terminal", desc = "Toggle terminal buffer" },
    ["<leader>tu"] = { cmd "UndotreeToggle", desc = "Toggle undotree" },
    -- window resizing
    ["<Up>"]       = { function() require("smart-splits").resize_up(2) end, desc = "Resize split up" },
    ["<Down>"]     = { function() require("smart-splits").resize_down(2) end, desc = "Resize split down" },
    ["<Left>"]     = { function() require("smart-splits").resize_left(2) end, desc = "Resize split left" },
    ["<Right>"]    = { function() require("smart-splits").resize_right(2) end, desc = "Resize split right" },
    ["_"]          = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
    ["+"]          = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },
    -- window zooming
    ["<leader>M"]  = { cmd "WindowsMaximize", desc = "Maximize" },
    ["<leader>ze"] = { cmd "WindowsEqualize", desc = "Equalize" },
    ["<leader>zh"] = { cmd "WindowsMaximizeHorizontally", desc = "Horizontally" },
    ["<leader>zm"] = { cmd "WindowsMaximize", desc = "Maximize" },
    ["<leader>zv"] = { cmd "WindowsMaximizeVertically", desc = "Vertically" },
  },
  t = {
    ["jk"] = { "<C-\\><C-n>", desc = "Terminal normal mode" },
    ["<C-l>"] = false,
  },
  v = {
    ["<leader>a"] = { ":EasyAlign ", desc = "Easy align" },
  },
}
