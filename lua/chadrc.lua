-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "kanagawa",
  transparency = true,
  nvdash = {
    load_on_startup = true,
    header = require('ascii_art'),
    theme = 'dark'
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

  hl_override = {
    Comment = { italic = true, fg = "teal" },
    ["@comment"] = { italic = true, fg = "teal" },
    LineNr = { fg = "dark_purple" },
    CursorLineNr = { fg = "baby_pink" },
    BufferLineTabSelected = { fg = "pink" },
    BufferLineFill = { bf = "red" },
    NvDashAscii = { bg = "grey", fg = "white" }, 
  },
}

return M
