-- EXAMPLE 
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls" }
local angularls_project_library_path = "./node_modules"
local angularls_cmd = {"ngserver", "--stdio", "--tsProbeLocations", angularls_project_library_path , "--ngProbeLocations", angularls_project_library_path}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
}

lspconfig.angularls.setup {
  cmd = angularls_cmd,
  on_new_config = function(new_config,new_root_dir)
    new_config.cmd = angularls_cmd
  end,
  root_dir = lspconfig.util.root_pattern('angular.json', 'package.json', 'tsconfig.json')(fname),
}
