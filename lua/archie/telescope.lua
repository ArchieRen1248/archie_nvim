local status, telescopebuiltin = pcall(require, 'telescope.builtin')
if not status then
  print("Telescope cannot be loaded!")
  return
end

-- Keymap config
vim.keymap.set('n', '<leader>ff', telescopebuiltin.find_files, {})
vim.keymap.set('n', '<leader>fg', telescopebuiltin.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescopebuiltin.buffers, {})
vim.keymap.set('n', '<leader>fh', telescopebuiltin.help_tags, {})
