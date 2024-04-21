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
  {"neovim/nvim-lspconfig", "williamboman/nvim-lsp-installer"},
  {"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"},
  {"alohaia/fcitx.nvim",
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
  },
})
