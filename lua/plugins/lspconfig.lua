return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    cmd = "Mason",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "rust-analyzer",
      },
    },
    config = function(_, opts)
      require("mason").setup(opts)
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      automatic_installation = true,
    },
    config = function(_, opts)
      require("mason-lspconfig").setup(opts)
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
    },
    opts = {
      inlay_hints = { enabled = false },
    },
    config = function(_, opts)
      local lspconfig = require("lspconfig")
      
      -- Setup common capabilities
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      
      -- Setup common on_attach function
      local on_attach = function(client, bufnr)
        -- Add your keymaps and other on_attach configurations here
      end
      
      -- Configure individual servers
      lspconfig.lua_ls.setup({
        cmd = { "/opt/homebrew/bin/lua-language-server" },
        capabilities = capabilities,
        on_attach = on_attach,
      })
      
      lspconfig.tsserver.setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
      
      lspconfig.rust_analyzer.setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
    end,
  },
}
