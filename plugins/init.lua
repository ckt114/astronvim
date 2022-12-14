return {
  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu"
  },
  { "junegunn/vim-easy-align" },
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
  { "rebelot/kanagawa.nvim" },
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
    config = function()
      require "user.themes.onedarkpro"
    end,
  },
  { "rmehri01/onenord.nvim" },
  {
    "folke/tokyonight.nvim",
    config = function()
      require "user.themes.tokyonight"
    end,
  },

  -- disabled plugins
  -- ["nvim-neo-tree/neo-tree.nvim"] = { disable = true },
}
