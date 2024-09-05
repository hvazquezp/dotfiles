return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function ()
    require('telescope').setup({
      pickers = {
        live_grep = {
          file_ignore_patterns = {
            'node_modules/',
            '.git/',
            '.venv'
          },
          additional_args = {
            "--hidden",
          }
        },
        find_files = {
          file_ignore_patterns = {
            'node_modules/',
            '.git/',
            '.venv'
          },
          hidden = true
        }
      }
    })
  end
}

