require("basic")
require("keybinds")
require("plugins")
require("lsp")

-- 插件配置
require("nvim-treesitter.install").prefer_git = true
require("plugin-config/nvim-treesitter")

vim.g.codedark_term256 = 1
vim.cmd("set background=dark")

require("color")