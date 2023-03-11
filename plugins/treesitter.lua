return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    {
      "andymass/vim-matchup",
      init = function()
        vim.g.matchup_matchparen_deferred = 1
        vim.g.matchup_matchparen_hi_surround_always = 1
        vim.g.matchup_matchparen_offscreen = { method = "popup" }
      end,
    },
  },
  config = function(plugin, opts)
    require "plugins.configs.nvim-treesitter" (plugin, opts)
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "bash",
        "dockerfile",
        "go",
        "hcl",
        "json",
        "lua",
        "markdown",
        "python",
        "ruby",
        "terraform",
        "yaml"
      },
    }
  end
}
