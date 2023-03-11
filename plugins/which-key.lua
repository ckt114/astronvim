return {
  "folke/which-key.nvim",
  config = function(plugin, opts)
    require "plugins.configs.which-key" (plugin, opts)
    require("which-key").register(
      { z = { name = "Zoom" } },
      { mode = "n", prefix = "<leader>" }
    )
  end,
}
