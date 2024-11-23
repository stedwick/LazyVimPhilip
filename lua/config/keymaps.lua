-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "X", "<cmd>xa!<cr>", { desc = "Save & Quit" })
map("n", "<S-Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<Tab>", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })
map("n", "<leader>D", "<cmd>Dashboard<cr>", { desc = "Dashboard" })
map("n", "<leader><F5>", function()
  vim.cmd.UndotreeToggle()
  vim.cmd.UndotreeFocus()
end, { desc = "Undotree Toggle + Focus" })
