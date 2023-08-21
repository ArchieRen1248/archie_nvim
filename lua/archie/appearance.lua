-- lualine about
local status, lualine = pcall(require, "lualine")
if not status then
  print("Lualine cannot be loaded!")
  return
end

lualine.setup({
  options = {
    component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''},
  },
  sections = {
    lualine_y = {{'progress', padding = 0}},
  }
})

-- coloscheme about
local status, vscode = pcall(require, "vscode")
if not status then
  print("VSCode colorscheme cannot be loaded!")
  return
end
vscode.load()

-- bufferline about
-- require("bufferline").setup()
