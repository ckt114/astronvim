return {
  "echasnovski/mini.move",
  config = function(_, opts) require("mini.move").setup(opts) end,
  keys = {
    { "<A-l>", mode = { "n", "v" } },
    { "<A-k>", mode = { "n", "v" } },
    { "<A-j>", mode = { "n", "v" } },
    { "<A-h>", mode = { "n", "v" } },
  },
  opts = {},
}
