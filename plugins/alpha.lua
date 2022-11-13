return function(config)
  table.insert(config.layout[4].val, 0, astronvim.alpha_button("LDR P  ", "  Projects"))
  table.insert(config.layout[4].val, 1, astronvim.alpha_button("LDR f r", "  Recent files"))
  table.remove(config.layout[4].val, 4)
  return config
end
