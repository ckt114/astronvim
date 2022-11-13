return {
  {
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
  },
  {
    "ellisonleao/glow.nvim",
    branch = "main",
    cmd = "Glow",
    config = function()
      require("glow").setup({
        width = 300,
      })
    end,
  },
  {
    "rmagatti/goto-preview",
    config = function()
      require("goto-preview").setup({
        default_mappings = true,
      })
    end,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup()
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    requires = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require "user.plugins.nvim-tree"
    end
  },
  {
    "pwntester/octo.nvim",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "kyazdani42/nvim-web-devicons",
    },
    config = function()
      require "user.plugins.octo"
    end,
  },
  {
    "nvim-telescope/telescope-project.nvim",
    requires = { "nvim-telescope/telescope-file-browser.nvim" },
    after = "telescope.nvim",
    config = function()
      require "user.plugins.telescope-project"
    end,
  },
  { "godlygeek/tabular", cmd = "Tabularize" },

  -- themes
  { "Mofiqul/adwaita.nvim" },
  { "Shatur/neovim-ayu" },
  { "sainnhe/edge" },
  { "rebelot/kanagawa.nvim" },
  { "Th3Whit3Wolf/one-nvim" },
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup {
        style = "deep", -- dark, darker, cool, deep, warm, warmer, light
      }
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    config = function()
      require("onedarkpro").setup {
        dark_theme = "onedark", -- onedark, onedark_vivid, onedark_dark
        light_theme = "onelight",
      }
    end,
  },

  -- disabled plugins
  ["nvim-neo-tree/neo-tree.nvim"] = { disable = true },
}
