return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- https://github.com/folke/noice.nvim/?tab=readme-ov-file#-views
      opts.views = {
        hoversmall = {
          view = "popup",
          relative = "cursor",
          zindex = 45,
          enter = false,
          anchor = "auto",
          size = {
            width = "auto",
            height = "auto",
            max_height = 1,
            max_width = 120,
          },
          border = {
            style = "none",
            padding = { 0, 2 },
          },
          position = { row = 1, col = 0 },
          win_options = {
            wrap = true,
            linebreak = true,
          },
        },
      }
      opts.lsp.signature = {
        -- auto_open = { enabled = false },
        view = "hoversmall",
      }
      opts.presets = { inc_rename = true }
    end,
  },
}
