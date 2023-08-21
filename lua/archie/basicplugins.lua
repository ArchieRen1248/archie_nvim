local status, autopairs = pcall(require, "nvim-autopairs")
if not status then
  print("Nvim-autopairs cannot be loaded!")
  return
end

autopairs.setup({
  disable_filetype = {"TelescopePrompt", "vim"},
})
