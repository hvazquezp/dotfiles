return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },{
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "terraformls", "jdtls", "tsserver", "gopls", "html", "volar","vuels"}
      })
    end
  }, {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.bashls.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = {'vim'}
            }
          }
        }
      })
      lspconfig.vuels.setup({
        capabilities = capabilities
      })
      lspconfig.volar.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.terraformls.setup({
        capabilities = capabilities
      })
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.gopls.setup({
        capabilities = capabilities
      })
      lspconfig.jdtls.setup({
        capabilities = capabilities
      })
      vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, {})
    end
  }, {
    "rshkarin/mason-nvim-lint",
    dependencies = { "mfussenegger/nvim-lint" },
    config = function()
      require('lint').linters_by_ft = {}
      require('mason-nvim-lint').setup({
        ensure_installed = { "eslint_d" }
      })
    end
  }
}
