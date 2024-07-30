return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      win = {
        -- don't allow the popup to overlap with the cursor
        no_overlap = false,
      },
    },
    -- keys = {
    --   {
    --     "<leader>?",
    --     function()
    --       require("which-key").show({ global = false })
    --     end,
    --     desc = "Buffer Local Keymaps (which-key)",
    --   },
    -- },
  },
}
