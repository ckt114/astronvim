local lz_key = { "<leader>ft", "<cmd>Telescope colorscheme<cr>", desc = "Find themes" }

return {
  { "catppuccin/nvim",            keys = { lz_key } },
  { "NTBBloodbath/doom-one.nvim", keys = { lz_key } },
  {
    "Shatur/neovim-ayu",
    keys = { lz_key },
    config = function()
      require("ayu").setup {
        mirage = vim.g.theme_style == "mirage" and true or false
      }
    end
  },
  {
    "rebelot/kanagawa.nvim",
    keys = { lz_key },
    commit = "de7fb5f5de25ab45ec6039e33c80aeecc891dd92",
  },
  { "EdenEast/nightfox.nvim", keys = { lz_key } },
  { "Th3Whit3Wolf/one-nvim",  keys = { lz_key } },
  {
    "navarasu/onedark.nvim",
    keys = { lz_key },
    opts = {
      style = vim.g.theme_style, -- cool, dark, darker, light, warm, warmer
    },
  },
  {
    "folke/tokyonight.nvim",
    keys = { lz_key },
    opts = {
      style = vim.g.theme_style, -- day, moon, night, storm
    }
  },
}
