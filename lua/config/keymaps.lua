-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_set_keymap("n", "<leader>s", "i<CR><Esc>", { noremap = true, desc = "Split line infront of cursor" })
vim.api.nvim_set_keymap("n", "<leader>S", "a<CR><Esc>", { noremap = true, desc = "Split lien behind of cursor" })

for _, mode_char in pairs({ "n", "v" }) do
  for _, op_char in pairs({ "c", "d", "x" }) do
    if op_char == "x" and mode_char == "v" then
      goto continue
    end

    local desc = ""

    if op_char == "c" then
      desc = "Change op"
    elseif op_char == "d" then
      desc = "Delete op"
    elseif op_char == "x" then
      desc = "Delete word"
    end

    vim.api.nvim_set_keymap(mode_char, op_char, '"_' .. op_char, { noremap = true, silent = true, desc = desc })
    vim.api.nvim_set_keymap(
      mode_char,
      "<leader>" .. op_char,
      op_char,
      { noremap = true, silent = true, desc = desc .. ", but copy to clipboard too" }
    )

    ::continue::
  end
end

-- vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true })
-- vim.api.nvim_set_keymap("n", "d", '"_d', { noremap = true })
-- vim.api.nvim_set_keymap("n", "D", '"_D', { noremap = true })
-- vim.api.nvim_set_keymap("v", "d", '"_d', { noremap = true })

-- vim.api.nvim_set_keymap("n", "<leader>dd", '"*dd', { noremap = true, desc = "Cut line to clipboard" })
-- vim.api.nvim_set_keymap("n", "<leader>d", '"*d', { noremap = true, desc = "Cut to clipboard" })
-- vim.api.nvim_set_keymap("n", "<leader>D", '"*D', { noremap = true, desc = "Cut to clipboard" })
-- vim.api.nvim_set_keymap("v", "<leader>d", '"*d', { noremap = true, desc = "Cut to clipboard" })
--
-- vim.api.nvim_set_keymap("n", "yy", '"*yy', { noremap = true, desc = "Yank line to clipboard" })
-- vim.api.nvim_set_keymap("n", "y", '"*y', { noremap = true, desc = "Yank to clipboard" })
-- vim.api.nvim_set_keymap("n", "p", '"*p', { noremap = true, desc = "Paste after cursor from clipboard" })
-- vim.api.nvim_set_keymap("n", "P", '"*P', { noremap = true, desc = "Paste in front cursor from clipboard" })

-- vim.api.nvim_set_keymap("n", "<leader>hl", ":set hlsearch!<cr>", { noremap = true })
