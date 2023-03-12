return {
  "folke/which-key.nvim",
  config = function(plugin, opts)
    require "plugins.configs.which-key" (plugin, opts)
    require("which-key").register(
      {
        b = { name = " Buffer" },
        f = { name = " Find" },
        p = { name = " Package" },
        S = { name = " Session" },
        z = { name = " Zoom" },
      },
      { mode = "n", prefix = "<leader>" }
    )
  end,
}
