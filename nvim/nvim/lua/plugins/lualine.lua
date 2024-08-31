return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      require('lualine').setup({
        options = {
          -- theme = 'horizon'
          theme = 'modus-vivendi'
        }
      })
    end
  }
}
