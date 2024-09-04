return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    event_handlers = {
      event = "neo_tree_buffer_enter",
      handler = function ()
        vim.opt_local.relativenumber = true
        vim.opt_local.number = true
      end,
    }
  },
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup({
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true
        },
        hijack_netrw_behavior = "open_current",
      }

    })
  end
}
