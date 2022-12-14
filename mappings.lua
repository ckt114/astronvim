local cmd = function(command)
  return table.concat({ '<CMD>', command, '<CR>' })
end

local builtin = require("telescope.builtin")
local utils = require("telescope.utils")

return {
  n = {
    -- disable others
    ["<leader>h"] = false,

    -- disable gitsigns
    ["<leader>gg"] = false,
    ["<leader>gh"] = false,
    ["<leader>gj"] = false,
    ["<leader>gk"] = false,
    ["<leader>gl"] = false,
    ["<leader>gp"] = false,
    ["<leader>gu"] = false,

    -- disable toggleterm
    ["<leader>th"] = false,
    ["<leader>tl"] = false,
    ["<leader>tn"] = false,
    ["<leader>tu"] = false,
    ["<leader>tv"] = false,

    -- misc
    ["<Tab>"] = { "<c-w><c-w>", desc = "Move around" },
    ["<M-]>"] = { cmd "BufferLineMoveNext", desc = "Move buffer right" },
    ["<M-[>"] = { cmd "BufferLineMovePrev", desc = "Move buffer left" },

    ["<leader>C"]  = { cmd "CodeActionMenu", desc = "Code action" },
    ["<leader>d"]  = { function() require("alpha").start() end, desc = "Dashboard" },
    ["<leader>F"]  = { function() vim.lsp.buf.format(astronvim.lsp.format_opts) end, desc = "Format code" },
    ["<leader>fr"] = { function() builtin.oldfiles({ cwd_only = true }) end, desc = "Recent files" },
    ["<leader>fW"] = { function() builtin.live_grep({ cwd = utils.buffer_dir() }) end,
      desc = "Search words in cwd" },
    ["<leader>P"]  = { function() require("telescope").extensions.project.project { display_type = "full" } end,
      desc = "Projects" },
    ["<leader>pr"] = { cmd "AstroReload", desc = "Reload config" },

    -- window resizing
    ["<Up>"]    = { function() require("smart-splits").resize_up(2) end, desc = "Resize split up" },
    ["<Down>"]  = { function() require("smart-splits").resize_down(2) end, desc = "Resize split down" },
    ["<Left>"]  = { function() require("smart-splits").resize_left(2) end, desc = "Resize split left" },
    ["<Right>"] = { function() require("smart-splits").resize_right(2) end, desc = "Resize split right" },

    -- git
    ["<leader>gd"] = { function() require("gitsigns").diffthis() end, desc = "Git diff" },
    ["<leader>ge"] = { ":Octo pr edit ", desc = "Edit PR" },
    ["<leader>gL"] = { cmd "Octo pr list", desc = "List PRs" },
    ["<leader>gr"] = { cmd "Octo pr create", desc = "Create PR" },
    ["<leader>gR"] = { cmd "Octo review start", desc = "Review PR" },
    ["<leader>gS"] = { cmd "Octo review submit", desc = "Submit review" },
    ["<leader>gs"] = { function() builtin.git_status() end, desc = "Git status" },
    ["<leader>gt"] = { function() astronvim.toggle_term_cmd "lazygit" end, desc = "Toggle lazygit" },

    -- toggle
    ["<leader>tb"] = { function() astronvim.ui.toggle_background() end, desc = "Toggle background" },
    ["<leader>tc"] = { function() builtin.colorscheme() end, desc = "Toggle colorscheme" },
    ["<leader>tf"] = { cmd "setlocal foldmethod=indent", desc = "Folding" },
    ["<leader>tg"] = { function() astronvim.toggle_term_cmd "lazygit" end, desc = "Toggle lazygit" },
    ["<leader>tp"] = { function() astronvim.toggle_term_cmd "python3" end, desc = "Toggle python" },
    ["<leader>tr"] = { cmd "Glow", desc = "Toggle readme preview" },
    ["<leader>ts"] = { function() require("aerial").toggle() end, desc = "Toggle symbols outline" },
    ["<leader>tt"] = { cmd "ToggleTerm direction=float", desc = "Toggle terminal" },

    -- zoom
    ["<leader>ze"] = { cmd "WindowsEqualize", desc = "Equalize" },
    ["<leader>zh"] = { cmd "WindowsMaximizeHorizontally", desc = "Horizontally" },
    ["<leader>zm"] = { cmd "WindowsMaximize", desc = "Maximize" },
    ["<leader>zv"] = { cmd "WindowsMaximizeVertically", desc = "Vertically" },
  },
  t = {
    ["<leader>tt"] = { "<C-\\><C-n><C-w>l", desc = "Hide terminal" },
  },
  v = {
    ["<leader>a"] = { ":EasyAlign ", desc = "Easy align" },
  },
}
