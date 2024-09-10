local mason_path = vim.fn.stdpath("data") .. "/mason"

local ensure_installed_servers = {
  "vimls",
  "lua_ls",
}

-- 安装列表
-- https://github.com/williamboman/nvim-lsp-installer#available-lsps
local servers = {
  clangd = {}, -- 一般随着 llvm 一起安装，不需要 mason
  volar = {
    init_options = {
      typescript = {
        tsdk = mason_path .. "/packages/vue-language-server/node_modules/typescript/lib",
      },
    },
    filetypes = { "vue", "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  },
}

return {
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
        icons = {
          package_installed = "󰗠",
          package_pending = "󰅙",
          package_uninstalled = "󰳟",
        },
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = "williamboman/mason.nvim",
    opts = { ensure_installed = ensure_installed_servers, },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = "williamboman/mason-lspconfig.nvim",
    config = function()
      local lspconfig = require("lspconfig")

      for name, config in pairs(servers) do
        if config ~= nil and type(config) == "table" then
          lspconfig[name].setup(config)
        end
      end

      -- 自动设置
      require("mason-lspconfig").setup_handlers {
        function(server)
          if servers[server] == nil then
            lspconfig[server].setup {}
          end
        end
      }
    end,
  },
}