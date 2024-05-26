function SetTab(value)
  vim.bo.shiftwidth = tonumber(value)
  vim.bo.tabstop = tonumber(value)
end

function ShowTab()
  print("shiftwidth=" .. vim.bo.shiftwidth .. " tabstop=" .. vim.bo.tabstop)
end

-- Register custom commands
vim.cmd "command! -nargs=1 Settab lua SetTab(<f-args>)"
vim.cmd "command! Showtab lua ShowTab()"
