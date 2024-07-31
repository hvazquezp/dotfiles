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
        ensure_installed = { "lua_ls", "terraformls", "jdtls", "tsserver"}
      })
    end
  }, {
    "nvim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.terraformls.setup({})
      lspconfig.tflint.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.jdtls.setup({})
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
