return {
  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu"
  },
  {
    "noib3/nvim-cokeline",
    commit = "501f93ec84af0d505d95d3827cad470b9c5e86dc",
    config = function()
      require "user.plugins.cokeline"
    end,
  },
  { "junegunn/vim-easy-align" },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require "user.plugins.lualine"
    end,
  },
  {
    "ellisonleao/glow.nvim",
    branch = "main",
    cmd = "Glow",
    config = function()
      require "user.plugins.glow"
    end,
  },
  {
    "rmagatti/goto-preview",
    config = function()
      require "user.plugins.goto-preview"
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
    config = function()
      require "user.plugins.nvim-tree"
    end,
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
  { "mbbill/undotree" },
  {
    "anuvyklack/windows.nvim",
    requires = { "anuvyklack/middleclass" },
    config = function()
      require('windows').setup()
    end
  },
  -- themes
  { "catppuccin/nvim" },
  { "NTBBloodbath/doom-one.nvim" },
  {
    "Shatur/neovim-ayu",
    config = function()
      require "user.themes.ayu"
    end,
  },
  { "rebelot/kanagawa.nvim", commit = "de7fb5f5de25ab45ec6039e33c80aeecc891dd92" },
  { "EdenEast/nightfox.nvim" },
  { "Th3Whit3Wolf/one-nvim" },
  {
    "navarasu/onedark.nvim",
    config = function()
      require "user.themes.onedark"
    end,
  },
  {
    "olimorris/onedarkpro.nvim",
    tag = "0.7",
    config = function()
      require "user.themes.onedarkpro"
    end,
  },
  {
    "folke/tokyonight.nvim",
    config = function()
      require "user.themes.tokyonight"
    end,
  },
  -- disabled plugins
  ["akinsho/bufferline.nvim"]     = { disable = true },
  ["rebelot/heirline.nvim"]       = { disable = true },
  ["nvim-neo-tree/neo-tree.nvim"] = { disable = true },
}
