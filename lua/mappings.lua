require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

vim.api.nvim_set_keymap("n", "<leader>sl", "i<CR><Esc>", { noremap = true, desc = "Split line infront of cursor" })
vim.api.nvim_set_keymap("n", "<leader>sL", "a<CR><Esc>", { noremap = true, desc = "Split lien behind of cursor" })

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

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
