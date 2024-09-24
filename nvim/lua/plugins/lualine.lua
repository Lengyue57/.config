return {
  "nvim-lualine/lualine.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      icons_enabled = true,
      theme = "auto",
      component_separators = { left = "", right = ""},
      section_separators = { left = "", right = ""},
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = { "filename" },
      lualine_b = { "branch", "diff", "diagnostics" },
      lualine_c = {},

      lualine_x = {},
      lualine_y = {
        "encoding",
        {
          "fileformat",
          icons_enabled = true,
          symbols = {
            unix = "LF",
            dos  = "CRLF",
            mac  = "CR",
          }
        },
        "filetype",
      },
      lualine_z = { "selectioncount", "location", "progress" },
    },
    inactive_sections = {
      lualine_a = { "filename" },
      lualine_b = { "diff", "diagnostics" },
      lualine_c = {},

      lualine_x = {},
      lualine_y = {
        "encoding",
        {
          "fileformat",
          icons_enabled = true,
          symbols = {
            unix = "LF",
            dos  = "CRLF",
            mac  = "CR",
          }
        },
        "filetype",
      },
      lualine_z = { "location" },
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {},
  }
}