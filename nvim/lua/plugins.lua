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
  {"williamboman/mason.nvim"},
  {"williamboman/mason-lspconfig.nvim"},
  {"neovim/nvim-lspconfig"},
  {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"},

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
