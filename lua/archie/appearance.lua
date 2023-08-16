-- lualine about
require("lualine").setup({
  options = {
    component_separators = {left = '', right = ''},
    section_separators = {left = '', right = ''},
  },
  sections = {
    lualine_y = {{'progress', padding = 0}},
  }
})

-- coloscheme about
require("vscode").load()

-- bufferline about
-- require("bufferline").setup()
