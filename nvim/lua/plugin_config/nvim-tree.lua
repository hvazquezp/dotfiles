require('nvim-tree').setup {
  view = {
    float = {
      enable = true,
      open_win_config = {
        width = 100,
        height = 40,
        row = 2,
        col = 2
      }
    }
  },
  on_attach = function(bfn)
    local api = require('nvim-tree.api')
    api.config.mappings.default_on_attach(bfn)
    vim.keymap.set('n', '<leader>b', function ()
      return vim.cmd('NvimTreeFindFile')
    end)
  end
}
