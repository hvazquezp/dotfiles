return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      require('lualine').setup({
        options = {
          -- theme = 'horizon'
          theme = 'modus-vivendi',
          component_separators = { left = '|', right = '|' }
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff', 'diagnostics'},
          lualine_c = {{
            'buffers'
          }},
          lualine_y = {'progress'},
          lualine_x = {'searchcount',  {
            'filename',
            path = 1,
          } , 'filetype'},
          lualine_z = {'location'}
        }
      })
    end
  }
}
