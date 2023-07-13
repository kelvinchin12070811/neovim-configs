-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.colorcolumn = "110"
vim.opt.visualbell = true
vim.opt.clipboard = nil

vim.cmd([[hi Normal guibg=none ctermbg=none]])
vim.cmd([[hi LineNr guibg=none ctermbg=none]])
vim.cmd([[hi Folded guibg=none ctermbg=none]])
vim.cmd([[hi NonText guibg=none ctermbg=none]])
vim.cmd([[hi SpecialKey guibg=none ctermbg=none]])
vim.cmd([[hi VertSplit guibg=none ctermbg=none]])
vim.cmd([[hi SignColumn guibg=none ctermbg=none]])
vim.cmd([[hi EndOfBuffer guibg=none ctermbg=none]])
