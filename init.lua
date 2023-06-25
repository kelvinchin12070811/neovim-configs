vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.colorcolumn = "110"
vim.opt.visualbell = true

vim.api.nvim_set_keymap("n", "dd", '"_dd', { noremap = true })
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true })
vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true })
vim.api.nvim_set_keymap("n", "D", '"_D', { noremap = true })
vim.api.nvim_set_keymap("n", "s", "i<CR><Esc>", { noremap = true })
vim.api.nvim_set_keymap("n", "S", "a<CR><Esc>", { noremap = true })
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

vim.opt.spelllang = "en_gb"
vim.opt.spell = true

-- Auto format on save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "",
  command = ":Neoformat",
})
