local status, mason = pcall(require, "mason")
if not status then
  print("mason cannot be loaded!")
  return
end
mason.setup()


local status, masonlspconfig = pcall(require, "mason-lspconfig")
if not status then
  print("mason-lspconfig cannot be loaded!")
  return
end
masonlspconfig.setup()
