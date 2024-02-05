require("nvim-treesitter.configs").setup {
  ensure_installed = {
    "bash",
    "vim",
    "xml",
    "lua",
    "c",
    "cpp",
    "cmake"
  },

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
}
