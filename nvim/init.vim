lua set = vim.opt
lua require("basic")
lua require("keybinds")
lua require("plugins")
lua require("lsp/setup")

" 插件配置
lua require("nvim-treesitter.install").prefer_git = true
lua require("plugin-config/nvim-treesitter")

let g:codedark_term256=1
set background=dark
colorscheme gruvbox
