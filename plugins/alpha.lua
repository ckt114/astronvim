return function(config)
  config.layout[4].val = {
    astronvim.alpha_button("LDR P  ", "  Projects"),
    astronvim.alpha_button("LDR s f", "  Find File  "),
    astronvim.alpha_button("LDR s r", "  Recents  "),
    astronvim.alpha_button("LDR s w", "  Find Word  "),
    astronvim.alpha_button("LDR S l", "  Last Session  "),
  }
  return config
end
