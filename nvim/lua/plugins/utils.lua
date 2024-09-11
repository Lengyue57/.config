return {
  -- 代码折叠
  -- {
  --   'kevinhwang91/nvim-ufo',
  --   dependencies = 'kevinhwang91/promise-async',
  --   config = function()
  --     require("plugin-config/nvim-ufo")
  --   end
  -- },


  -- fcitx 自动切换输入法
  (vim.fn.has("win64") == 0) and {"alohaia/fcitx.nvim",
    opts = {
      enable = {
        normal = true,
        insert = true,
        cmdline = true,
        cmdtext = "insert",
        terminal = "insert",
        select = "normal",
      },
    },
  } or nil,
}
