local keymap = vim.keymap

-- Set leader key (already set by LazyVim, but included for completeness)
vim.g.mapleader = " "

-- Set clipboard to use system clipboard
vim.opt.clipboard = "unnamedplus"

-- Save file
keymap.set("n", "<leader>s", ":w<cr>", { desc = "Save file" })

-- Clear search highlighting
keymap.set("n", "no", ":noh<CR>", { desc = "Clear search highlighting" })

-- Center cursor after scrolling
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })

-- Toggle comment with Ctrl + /
keymap.set("n", "<C-/>", "gcc", { remap = true, desc = "Toggle comment" })
keymap.set("v", "<C-/>", "gc", { remap = true, desc = "Toggle comment" })