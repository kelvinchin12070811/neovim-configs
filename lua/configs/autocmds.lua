local autocmds = {
  "au TermOpen * setlocal nospell",
  "autocmd FileType nvdash setlocal nospell",
}

local narrow_tab_files = {
  "lua",
}

for _, autocmd in pairs(autocmds) do
  vim.cmd(autocmd)
end

for _, filetype in pairs(narrow_tab_files) do
  vim.cmd("autocmd FileType " .. filetype .. " Settab 2")
end
