-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local autosave_group = vim.api.nvim_create_augroup("AutoSave", { clear = true })

vim.api.nvim_create_autocmd({ "CursorHold" }, {
  group = autosave_group,
  callback = function()
    LazyVim.format({ quiet = true })
    vim.cmd("silent! wa!")
  end,
})
