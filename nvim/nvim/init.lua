vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = ' '
require("config.lazy")
require("plugin_config")
vim.opt.relativenumber = true
vim.opt.showcmd = true
vim.opt.cursorline = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 20
vim.keymap.set("n", "<Esc>", function ()
  vim.cmd('nohlsearch')
end)
vim.keymap.set('n', '<leader>b', function ()
  vim.cmd('Neotree reveal')
end)
vim.keymap.set('n', '<leader>gc', ':Git commit')
vim.keymap.set('n', '<leader>r', function ()
  require('kulala').run()
end)
