local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- 代码折叠
  {
    'kevinhwang91/nvim-ufo',
    dependencies = 'kevinhwang91/promise-async',
    config = function()
      require("plugin-config.nvim-ufo")
    end
  },
  -- 语法高亮
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("nvim-treesitter.install").prefer_git = true
      require("plugin-config/nvim-treesitter")
    end,
  },

  -- LSP
  {"williamboman/mason.nvim"},
  {"williamboman/mason-lspconfig.nvim"},
  {"neovim/nvim-lspconfig"},

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
})
