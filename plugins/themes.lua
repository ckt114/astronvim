return {
  { "catppuccin/nvim",            lazy = false },
  { "NTBBloodbath/doom-one.nvim", lazy = false },
  {
    "Shatur/neovim-ayu",
    lazy = false,
    config = function()
      require("ayu").setup {
        mirage = vim.g.theme_style == "mirage" and true or false
      }
    end
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    commit = "de7fb5f5de25ab45ec6039e33c80aeecc891dd92",
    priority = 1000,
  },
  { "EdenEast/nightfox.nvim" },
  { "Th3Whit3Wolf/one-nvim" },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    config = {
      colors = { bg1 = vim.g.colors.bg }, -- fix Octo sidebar color
      style  = vim.g.theme_style,         -- cool, dark, darker, light, warm, warmer
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    config = {
      style = vim.g.theme_style, -- day, moon, night, storm
    }
  },
}
