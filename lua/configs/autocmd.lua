local autocmds = {
  "au TermOpen * setlocal nospell",
  "autocmd FileType nvdash setlocal nospell",
  "autocmd FileType lua Settab 2",
}

for _, autocmd in pairs(autocmds) do
  vim.cmd(autocmd)
end
