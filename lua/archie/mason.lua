local status, mason = pcall(require, "mason")
if not status then
  print("Mason cannot be loaded!")
  return
end
mason.setup()


local status, masonlspconfig = pcall(require, "mason-lspconfig")
if not status then
  print("Mason-lspconfig cannot be loaded!")
  return
end
masonlspconfig.setup()
