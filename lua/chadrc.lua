-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "kanagawa",
  transparency = true,
  nvdash = {
    load_on_startup = true,
  },
  statusline = {
    theme = "vscode_colored",
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cursor", "tabsize", "cwd" },
    modules = {
      tabsize = function()
        return " " .. vim.bo.shiftwidth .. " "
      end,
    },
  },
  -- hl_override = {
  --   Normal = {
  --     bg = "NONE",
  --   },
  -- }

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

return M
