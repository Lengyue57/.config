require("nvim-lsp-installer").setup {
  automatic_installation = true,
  ui = {
    border = "rounded",
    icons = {
      server_installed = "󰗠",
      server_pending = "󰅙",
      server_uninstalled = "󰳟"
    },
  },
}
local lspconfig = require("lspconfig")

local lsp_installer = require 'nvim-lsp-installer'

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
-- { key: 语言 value: 配置文件 }
local servers = {
  asm_lsp = require 'lsp.configs.asm',
  clangd = require 'lsp.configs.cpp',
  cmake = require 'lsp.configs.cmake',
  lua_ls = require 'lsp.configs.lua', -- /lua/lsp/lua.lua
}

-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#sumneko_lua
for name, config in pairs(servers) do
  if config ~= nil and type(config) == "table" then
    -- 自定义初始化配置文件必须实现on_setup 方法
    config.on_setup(lspconfig[name])
  else
    -- 使用默认参数
    lspconfig[name].setup({})
  end
end
