return {
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-treesitter.install").prefer_git = false
      -- require("nvim-treesitter.install").compilers = { "clang", "gcc" }

      require("nvim-treesitter.configs").setup {
        ensure_installed = {
          "bash",
          "vim",
          "xml",
          "lua",
          "git_config",
          "git_rebase",
          "gitattributes",
          "gitcommit",
          "gitignore",
          "c",
          "cpp",
          "cmake"
        },

        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false
        },
      }
    end,
  },

}