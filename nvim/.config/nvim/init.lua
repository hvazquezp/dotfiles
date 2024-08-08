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
vim.keymap.set("n", "<Esc>", function ()
  vim.cmd('nohlsearch')
  vim.cmd('Neotree close')
end)
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function ()
    if (vim.bo.filetype ~= 'gitcommit')
    then
      vim.cmd('Alpha')
    end
  end
})
vim.keymap.set('n', '<leader>b', function ()
  vim.cmd('Neotree focus')
end)
