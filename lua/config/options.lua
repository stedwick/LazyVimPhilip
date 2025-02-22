-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.clipboard = vim.env.SSH_TTY and "" or "unnamed" -- Don't sync with system clipboard
opt.wrap = true
opt.updatetime = 1000
vim.g.minipairs_disable = true
