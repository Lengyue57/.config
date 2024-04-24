require("mason").setup {
  ui = {
    border = "rounded",
    icons = {
      package_installed = "󰗠",
      package_pending = "󰅙",
      package_uninstalled = "󰳟",
    },
  },
}

local mason_lspconfig = require("mason-lspconfig").setup {}
local lspconfig       = require("lspconfig")

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local servers = require("lsp/configMap")

for name, config in pairs(servers) do
  if config ~= nil and type(config) == "table" then
    lspconfig[name].setup(config)
  else
    lspconfig[name].setup{}
  end
end