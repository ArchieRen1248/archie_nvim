-- coloscheme(vscode) about
local status, vscode = pcall(require, "vscode")
if not status then
  print("VSCode colorscheme cannot be loaded!")
  return
end
vscode.load()

-- lualine about
local status, lualine = pcall(require, "lualine")
if not status then
  print("Lualine cannot be loaded!")
  return
end

local function archie_location()
  local line = vim.fn.line('.')
  local col = vim.fn.virtcol('.')
  return string.format('%d:%d', line, col)
end

lualine.setup({
  options = {
    theme = dracula,
    component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''},
  },
  sections = {
    lualine_x = {{'filetype'}},
    lualine_z = {{archie_location}}
  }
})

-- bufferline about
local status, bufferline = pcall(require, "bufferline")
if not status then
  print("Bufferline cannot be loaded!")
  return
end
bufferline.setup()

