-- mini.pairs
local status, pairs = pcall(require, "mini.pairs")
if not status then
  print("Mini.pairs cannot be loaded!")
  return
end

pairs.setup()

