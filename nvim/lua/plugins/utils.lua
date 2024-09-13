return {
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
