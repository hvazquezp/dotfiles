return {}
-- require('nvim-tree').setup {
--   on_attach = function(bfn)
--     local api = require('nvim-tree.api')
--     api.config.mappings.default_on_attach(bfn)
--     vim.keymap.set('n', '<leader>b', function ()
--       return vim.cmd('NvimTreeFindFile')
--     end)
--   end
-- }