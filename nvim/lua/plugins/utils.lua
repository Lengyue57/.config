return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
      jump = {
        nohlsearch = true,
        autojump = true,
      },
      label = {
        distance = true,
      },
      modes = {
        search = {
          enabled = true,
        },
      },
    },
    keys = {
      { "r", mode = "o", function() require("flash").remote() end },
    }
  },

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
