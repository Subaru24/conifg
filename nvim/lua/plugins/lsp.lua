return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "bashls", "pyright" },
      })
    end
  },
  {

    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
 
      lspconfig.lua_ls.setup({})
      lspconfig.pyright.setup({})
      lspconfig.bashls.setup({})
      
      vim.keymap.set("n", "<C-k>",vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd",vim.lsp.buf.definition, {})
      vim.keymap.set("n","<leader>ca",vim.lsp.buf.code_action, {})
    end

  }
}

