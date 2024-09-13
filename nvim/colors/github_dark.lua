local function setup_highlights(highlight_groups)
  for group_name, group_props in pairs(highlight_groups) do
    if group_props == nil then
      goto continue
    end

    if #group_props == 0 then
      vim.api.nvim_set_hl(0, group_name, { link = "Normal" })
    end

    vim.api.nvim_set_hl(0, group_name, group_props)
  end

  ::continue::
end

local colors = {
  white   = "#e6edf3",
  bg      = "#0d1117",
  ui_bg   = "#010409",
  silver  = "#8b949e",
  gray    = "#171b22",
  red     = "#ff7b72",
  lime    = "#7ee787",
  blue    = "#79c0ff",
  purple  = "#d2a8ff",
  skyblue = "#a5d6ff",
  yellow  = "#e3b341",
  orenge  = "#ffa657",
}

setup_highlights {
  NonText       = { fg = colors.gray },
  Normal        = { fg = colors.white, bg = colors.bg },
  LineNr        = { fg = colors.silver },
  CursorLine    = { bg = colors.gray },
  CursorLineNr  = { fg = colors.white },

  FloatBorder   = { fg = colors.silver },

  SignColumn    = {},
  ColorColumn   = { bg = colors.gray },

  MsgArea       = { bg = colors.ui_bg },
  ErrorMsg      = { fg = colors.red },
  WarningMsg    = { fg = colors.yellow },


  TabLine       = { fg = colors.silver, bg = colors.gray },
  TabLineFill   = { bg = colors.ui_bg },

  Folded        = { fg = colors.silver, bg = colors.gray },

  Statement     = { fg = colors.red },
  Identifier    = { italic = true },
  Function      = { fg = colors.purple, nocombine = true },
  ["@variable"] = { link = "Identifier" },
  Type          = { fg = colors.orenge },
  Constant      = { fg = colors.blue },
  String        = { fg = colors.skyblue },
  Character     = { link = "String" },
  Comment       = { fg = colors.silver },
  Special       = { bold = true },
  PreProc       = { fg = colors.purple },

  Pmenu         = { bg = colors.ui_bg },

  -- mark language specific
  -- xml
  xmlTagName    = { fg = colors.lime },
  xmlTag        = {},
  xmlEndTag     = { link = "xmlTag" },
  xmlAttrib     = { fg = colors.blue },
  xmlEqual      = {},
  -- html
  htmlTagN      = { link = "htmlTagName" },
  htmlTagName   = { link = "xmlTagName" },
  htmlTag       = { link = "xmlTag" },
  htmlEndTag    = { link = "xmlEndTag" },
  htmlArg       = { link = "xmlAttrib" },
  htmlEqual     = { link = "xmlEqual" },
}
