return {
  {
    "weilbith/nvim-code-action-menu",
    cmd = "CodeActionMenu",
    config = true,
  },
  {
    "junegunn/vim-easy-align",
    cmd = "EasyAlign",
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = true,
  },
  {
    "karb94/neoscroll.nvim",
    event = "BufRead",
    config = true,
  },
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
  },
  {
    "anuvyklack/windows.nvim",
    dependencies = { "anuvyklack/middleclass" },
    config = true,
  },
}
