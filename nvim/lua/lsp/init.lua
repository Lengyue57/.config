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
require("mason-lspconfig").setup {
  ensure_installed = {
    "vimls",
    "lua_ls",
  }
}

local lspconfig = require("lspconfig")

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local servers = require("lsp/configMap")

for name, config in pairs(servers) do
  if config ~= nil and type(config) == "table" then
    lspconfig[name].setup(config)
  end
end

-- 自动设置
require("mason-lspconfig").setup_handlers {
  function(_server)
    lspconfig[_server].setup {}
  end
}