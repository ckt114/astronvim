local cmd = function(command)
  return table.concat({ '<CMD>', command, '<CR>' })
end

local builtin = require("telescope.builtin")
local utils = require("telescope.utils")

return {
  n = {
    -- disable Find
    ["<leader>fb"] = false,
    ["<leader>fc"] = false,
    ["<leader>ff"] = false,
    ["<leader>fF"] = false,
    ["<leader>fh"] = false,
    ["<leader>fm"] = false,
    ["<leader>fn"] = false,
    ["<leader>fo"] = false,
    ["<leader>fw"] = false,
    ["<leader>fW"] = false,

    -- disable gitsigns
    ["<leader>gg"] = false,
    ["<leader>gh"] = false,
    ["<leader>gj"] = false,
    ["<leader>gk"] = false,
    ["<leader>gl"] = false,
    ["<leader>gp"] = false,
    ["<leader>gu"] = false,

    -- disable toggleterm
    ["<leader>tl"] = false,
    ["<leader>tn"] = false,
    ["<leader>tp"] = false,
    ["<leader>tv"] = false,

    -- misc
    ["<Tab>"]      = { "<c-w><c-w>", desc = "Move around" },
    ["<leader>C"]  = { cmd "CodeActionMenu", desc = "Code action" },
    ["<leader>d"]  = { function() require("alpha").start() end, desc = "Dashboard" },
    ["<leader>F"]  = { function() vim.lsp.buf.format(astronvim.lsp.format_opts) end, desc = "Format code" },
    ["<leader>P"]  = { function() require("telescope").extensions.project.project { display_type = "full" } end,
      desc = "Projects" },
    ["<leader>pr"] = { cmd "AstroReload", desc = "Reload config" },

    -- bufferline
    -- ["<M-]>"]   = { cmd "BufferLineMoveNext", desc = "Move buffer right" },
    -- ["<M-[>"]   = { cmd "BufferLineMovePrev", desc = "Move buffer left" },

    -- cokeline
    ["-"]     = { "<Plug>(cokeline-switch-prev)", desc = "Move buffer left", silent = true },
    ["="]     = { "<Plug>(cokeline-switch-next)", desc = "Move buffer right", silent = true },
    ["<M-["]  = { "<Plug>(cokeline-switch-prev)", desc = "Move buffer left", silent = true },
    ["<M-]"]  = { "<Plug>(cokeline-switch-next)", desc = "Move buffer right", silent = true },
    ["<S-h>"] = { "<Plug>(cokeline-focus-prev)", desc = "Focus left buffer", silent = true },
    ["<S-l>"] = { "<Plug>(cokeline-focus-next)", desc = "Focus right buffer", silent = true },

    -- git
    ["<leader>gd"] = { function() require("gitsigns").diffthis() end, desc = "Git diff" },
    ["<leader>ge"] = { ":Octo pr edit ", desc = "Edit PR" },
    ["<leader>gL"] = { cmd "Octo pr list", desc = "List PRs" },
    ["<leader>gr"] = { cmd "Octo pr create", desc = "Create PR" },
    ["<leader>gR"] = { cmd "Octo review start", desc = "Review PR" },
    ["<leader>gS"] = { cmd "Octo review submit", desc = "Submit review" },
    ["<leader>gs"] = { function() builtin.git_status() end, desc = "Git status" },
    ["<leader>gt"] = { function() astronvim.toggle_term_cmd "lazygit" end, desc = "Toggle lazygit" },

    -- nvim-tree
    ["<leader>e"] = { cmd "NvimTreeToggle", desc = "Explorer" },
    ["<leader>o"] = { cmd "NvimTreeFocus", desc = "Focus explorer" },

    -- search
    ["<leader>sa"] = { function() builtin.autocommands() end, desc = "Search autocommands" },
    ["<leader>sb"] = { function() builtin.buffers() end, desc = "Search buffers" },
    ["<leader>sc"] = { function() builtin.grep_string() end, desc = "Search cursor word" },
    ["<leader>sf"] = { function() builtin.find_files() end, desc = "Search files" },
    ["<leader>sF"] = { function() builtin.find_files({ hidden = true, no_ignore = true }) end, desc = "Search all files" },
    ["<leader>sh"] = { function() builtin.highlights() end, desc = "Search highlights" },
    ["<leader>sr"] = { function() builtin.oldfiles({ cwd_only = true }) end, desc = "Search recent files" },
    ["<leader>ss"] = { function() builtin.current_buffer_fuzzy_find() end, desc = "Search string" },
    ["<leader>sw"] = { function() builtin.live_grep({ cwd = utils.buffer_dir() }) end, desc = "Search words" },
    ["<leader>sW"] = { function() builtin.live_grep() end, desc = "Search all words" },
    ["<leader>so"] = { function() builtin.vim_options() end, desc = "Search options" },
    ["<leader>sp"] = { function() require("telescope").extensions.project.project { display_type = "full" } end,
      desc = "Search projects" },

    -- toggle
    ["<leader>tb"] = { function() astronvim.ui.toggle_background() end, desc = "Toggle background" },
    ["<leader>tc"] = { function() builtin.colorscheme() end, desc = "Toggle colorscheme" },
    ["<leader>tf"] = { cmd "setlocal foldmethod=indent", desc = "Toggle folding" },
    ["<leader>tg"] = { function() astronvim.toggle_term_cmd "lazygit" end, desc = "Toggle lazygit" },
    ["<leader>tr"] = { cmd "Glow", desc = "Toggle readme preview" },
    ["<leader>ts"] = { function() require("aerial").toggle() end, desc = "Toggle symbols outline" },
    ["<leader>tt"] = { cmd "terminal", desc = "Toggle terminal buffer" },
    ["<leader>T"]  = { cmd "ToggleTerm size=80 direction=vertical", desc = "Terminal" },
    ["<leader>th"] = { cmd "ToggleTerm size=10 direction=horizontal", desc = "Toggle horizontal terminal" },
    ["<leader>tu"] = { cmd "UndotreeToggle", desc = "Toggle undotree" },

    -- window resizing
    ["<Up>"]    = { function() require("smart-splits").resize_up(2) end, desc = "Resize split up" },
    ["<Down>"]  = { function() require("smart-splits").resize_down(2) end, desc = "Resize split down" },
    ["<Left>"]  = { function() require("smart-splits").resize_left(2) end, desc = "Resize split left" },
    ["<Right>"] = { function() require("smart-splits").resize_right(2) end, desc = "Resize split right" },
    ["_"]       = { function() require("smart-splits").resize_left() end, desc = "Resize split left" },
    ["+"]       = { function() require("smart-splits").resize_right() end, desc = "Resize split right" },

    -- window zooming
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
