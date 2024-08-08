return {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
            local alpha = require'alpha'
            local startify = require'alpha.themes.startify'
            startify.section.header.val = {
[[  _______________ ]],
[[ < Welcome to NVIM > ]],
[[  --------------- ]],
[[         \   ^__^  ]],
[[          \  (oo)\_______ ]],
[[             (__)\       )\/\\ ]],
[[                 ||----w | ]],
[[                 ||     || ]],
           }
            startify.nvim_web_devicons.enabled = true
            alpha.setup(startify.config)
          end
};
