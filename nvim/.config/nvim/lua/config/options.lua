-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.timeoutlen = 150

vim.api.nvim_set_hl(0, "FlashBackdrop", { fg = "#4a4a4a" })
vim.api.nvim_set_hl(0, "FlashMatch", { fg = "#ff9e64" })
vim.api.nvim_set_hl(0, "FlashCurrent", { fg = "#7eca9c" })
vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#ffffff", bg = "#1a1b26", bold = true })