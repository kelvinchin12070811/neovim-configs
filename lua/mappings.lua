require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

vim.cmd("map  <Leader><Leader>f <Plug>(easymotion-bd-f)")
vim.cmd("map <Leader><Leader>l <Plug>(easymotion-lineforward)")
vim.cmd("map <Leader><Leader>j <Plug>(easymotion-j)")
vim.cmd("map <Leader><Leader>k <Plug>(easymotion-k)")
vim.cmd("map <Leader><Leader>h <Plug>(easymotion-linebackward)")
vim.cmd("nmap <Leader><Leader>s <Plug>(easymotion-s2)")
vim.cmd("nmap <Leader><Leader>t <Plug>(easymotion-t2)")
vim.cmd("map  <Leader><Leader>/ <Plug>(easymotion-sn)")
vim.cmd("omap <Leader><Leader>/ <Plug>(easymotion-tn)")

map("n", "<leader>b", "", { desc = "buffer op" })
map("n", "<leader>bn", "<cmd>enew<CR>", { desc = "buffer new" })
map("n", "<leader>bd", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "buffer close" })

vim.api.nvim_set_keymap("n", "<leader>sl", "i<CR><Esc>", { noremap = true, desc = "Split line infront of cursor" })
vim.api.nvim_set_keymap("n", "<leader>sL", "a<CR><Esc>", { noremap = true, desc = "Split lien behind of cursor" })
vim.api.nvim_set_keymap("n", "gV", "<c-v>", { noremap = true, desc = "Block visual mode" })

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

-- Show commander and select the command by pressing "<leader>fc"
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
