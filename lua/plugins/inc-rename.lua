return {
  {
    "smjonas/inc-rename.nvim",
    config = function()
      require("inc_rename").setup({})
    end,
    keys = {
      {
        "gR",
        function()
          return ":IncRename " .. vim.fn.expand("<cword>")
        end,
        expr = true,
        desc = "Incremental rename",
      },
    },
  },
}
