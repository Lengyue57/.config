return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function ()
      require("plugin-config/lualine")
    end
  },
  -- 代码折叠
  -- {
  --   'kevinhwang91/nvim-ufo',
  --   dependencies = 'kevinhwang91/promise-async',
  --   config = function()
  --     require("plugin-config/nvim-ufo")
  --   end
  -- },
  -- 语法高亮
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.install").prefer_git = true
      require("plugin-config/nvim-treesitter")
    end,
  },

  -- 自动补全
  {"hrsh7th/cmp-nvim-lsp"},
  {"hrsh7th/nvim-cmp"},

  -- fcitx 自动切换输入法
  (vim.fn.has("win64") == 0) and {"alohaia/fcitx.nvim",
    config = function()
      require("fcitx") {
        enable = {
          normal = true,
          insert = true,
          cmdline = true,
          cmdtext = "insert",
          terminal = "insert",
          select = "normal",
        }
      }
    end
  } or nil,
}