-- Trying Codeium
return {
  {
    "supermaven-inc/supermaven-nvim",
    enabled = false,
    config = function()
      require("supermaven-nvim").setup({ disable_inline_completion = true })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- table.insert(opts.sources, { name = "supermaven" })
      -- https://github.com/LazyVim/LazyVim/discussions/2032#discussioncomment-8031990
      local cmp = require("cmp")
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<Tab>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ["<S-Tab>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      })
    end,
  },
}
