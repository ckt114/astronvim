return {
  default_component_configs = {
    name = {
      trailing_slash = true,
    },
  },
  source_selector = {
    separator = "",
  },
  window = {
    mappings = {
      ["<space>"] = false,
      ["-"] = "open_split",
      ["|"] = "open_vsplit",
      ["z"] = false,
    }
  },
  filesystem = {
    window = {
      mappings = {
        ["/"] = "fuzzy_finder_directory",
        C = "set_root",
        F = "fuzzy_finder",
        O = "navigate_up",
      },
    },
  },
}
