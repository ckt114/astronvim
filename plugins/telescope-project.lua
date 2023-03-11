local telescope = require("telescope")
telescope.load_extension "project"
telescope.setup({
  extensions = {
    project = {
      base_dirs = {
        "~/Projects",
      },
    },
  },
})
