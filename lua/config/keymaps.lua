-- Keymaps are automatically loaded on the VeryLazy event
-- Cefault keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.cmd("set clipboard+=unnamedplus")
if vim.g.neovide then
  vim.keymap.set('n', '<C-s>', ':w<CR>')      -- Save
  vim.keymap.set('v', '<C-C>', '"+y')         -- Copy
  vim.keymap.set('n', '<C-V>', '"+P')         -- Paste normal mode
  vim.keymap.set('v', '<C-V>', '"+P')         -- Paste visual mode
  vim.keymap.set('c', '<C-V>', '<C-R>+')      -- Paste command mode
  vim.keymap.set('i', '<C-V>', '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap('', '<C-V>', '+p<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('!', '<C-V>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-V>', '<C-R>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<C-V>', '<C-R>+', { noremap = true, silent = true })
