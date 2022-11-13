return {
  n = {
    -- disable others
    ["<leader>h"] = false,

    -- disable toggleterm
    ["<leader>tl"] = false,
    ["<leader>tu"] = false,
    ["<leader>th"] = false,
    ["<leader>tv"] = false,

    -- disable gitsigns
    ["<leader>gg"] = false,
    ["<leader>gj"] = false,
    ["<leader>gk"] = false,
    ["<leader>gl"] = false,
    ["<leader>gh"] = false,
    ["<leader>gp"] = false,
    ["<leader>gt"] = false,
    ["<leader>gu"] = false,

    -- misc
    ["<Tab>"] = { "<c-w><c-w>", desc = "Move around" },
    ["<M-]>"] = { ":BufferLineMoveNext<cr>", desc = "Move buffer right" },
    ["<M-[>"] = { ":BufferLineMovePrev<cr>", desc = "Move buffer left" },

    ["<leader>C"] = { "<cmd>CodeActionMenu<cr>", desc = "Code action" },
    ["<leader>d"] = { function() require("alpha").start() end, desc = "Dashboard" },
    ["<leader>e"] = { "<cmd>NvimTreeToggle<cr>", desc = "File explorer" },
    ["<leader>F"] = { function() vim.lsp.buf.format(astronvim.lsp.format_opts) end, desc = "Format code" },
    ["<leader>P"] = { "<cmd>lua require'telescope'.extensions.project.project{display_type='full'}<cr>",
      desc = "Projects" },
    ["<leader>pr"] = { "<cmd>AstroReload<cr>", desc = "Reload config" },

    -- window resizing
    ["<Up>"] = { function() require("smart-splits").resize_up(2) end, desc = "Resize split up" },
    ["<Down>"] = { function() require("smart-splits").resize_down(2) end, desc = "Resize split down" },
    ["<Left>"] = { function() require("smart-splits").resize_left(2) end, desc = "Resize split left" },
    ["<Right>"] = { function() require("smart-splits").resize_right(2) end, desc = "Resize split right" },

    -- toggle
    ["<leader>tb"] = { function() astronvim.ui.toggle_background() end, desc = "Toggle background" },
    ["<leader>tg"] = { function() astronvim.toggle_term_cmd "lazygit" end, desc = "ToggleTerm lazygit" },
    ["<leader>tp"] = { function() astronvim.toggle_term_cmd "python3" end, desc = "ToggleTerm python" },
    ["<leader>tr"] = { "<cmd>Glow<cr>", desc = "Toggle readme preview" },
    ["<leader>ts"] = { function() require("aerial").toggle() end, desc = "Toggle symbols outline" },
    ["<leader>tt"] = { "<cmd>Telescope colorscheme<cr>", desc = "Toggle themes" },

    -- git
    ["<leader>gd"] = { function() require("gitsigns").diffthis() end, desc = "Git diff" },
    ["<leader>gL"] = { "<cmd>Octo pr list<cr>", desc = "List PRs" },
    ["<leader>gr"] = { "<cmd>Octo pr create<cr>", desc = "Create PR" },
    ["<leader>gs"] = { function() require("telescope.builtin").git_status() end, desc = "Git status" },
  },
}
