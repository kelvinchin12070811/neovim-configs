-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazy.util")

vim.api.nvim_set_keymap("n", "dd", '"_dd', { noremap = true })
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true })
vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true })
vim.api.nvim_set_keymap("n", "D", '"_D', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>s", "i<CR><Esc>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>S", "a<CR><Esc>", { noremap = true })
vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true })

vim.api.nvim_set_keymap("n", "<leader>dd", '"*dd', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>d", '"*d', { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>D", '"*D', { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>d", '"*d', { noremap = true })

vim.api.nvim_set_keymap("n", "yy", '"*yy', { noremap = true })
vim.api.nvim_set_keymap("n", "y", '"*y', { noremap = true })
vim.api.nvim_set_keymap("n", "p", '"*p', { noremap = true })
vim.api.nvim_set_keymap("n", "P", '"*P', { noremap = true })

vim.api.nvim_set_keymap("n", "<leader>hl", ":set hlsearch!<cr>", { noremap = true })
