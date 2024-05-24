return {
  "hrsh7th/nvim-cmp",
  opts = function()
    local cmp = require "cmp"
    local conf = require "nvchad.configs.cmp"

    local mymappings = {
      ["<Up>"] = cmp.mapping.select_prev_item(),
      ["<Down>"] = cmp.mapping.select_next_item(),
      ["<Tab>"] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
      },
      ["<C-o>"] = cmp.mapping.complete { reason = cmp.ContextReason.Auto },
    }
    conf.mapping = vim.tbl_deep_extend("force", conf.mapping, mymappings)
    return conf
  end,
}
