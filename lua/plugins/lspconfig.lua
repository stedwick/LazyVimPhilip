return {
  {
    "mason-org/mason.nvim",
    build = ":MasonUpdate",
    cmd = "Mason",
    opts = {
      ensure_installed = {
      },
    },
    config = function(_, opts)
      require("mason").setup(opts)
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim" },
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
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
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
        cmd = { "lua-language-server" },
        capabilities = capabilities,
        on_attach = on_attach,
      })
    end,
  },
}
