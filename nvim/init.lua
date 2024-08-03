vim.g.mapleader = ' '
require("config.lazy")
require("plugin_config")
vim.opt.number = true
vim.opt.showcmd = true
vim.opt.cursorline = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 20
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
