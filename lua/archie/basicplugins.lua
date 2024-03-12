-- mini.pairs
local status, pairs = pcall(require, "mini.pairs")
if not status then
  print("mini.pairs cannot be loaded!")
  return
end

pairs.setup()

