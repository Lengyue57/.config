local hi = vim.api.nvim_set_hl

local fg      = "#e6edf3"
local bg      = "#0d1117"
local silver  = "#8b949e"
local gray    = "#171b22"
local red     = "#ff7b72"
local lime    = "#7ee787"
local blue    = "#79c0ff"
local purple = "#d2a8ff"
local skyblue    = "#a5d6ff"
local orenge  = "#ffa657"

hi(0, "NonText", { fg = gray })
hi(0, "Normal", { fg = fg, bg = bg })
hi(0, "LineNr", { fg = silver })
hi(0, "CursorLine", { bg = gray })
hi(0, "CursorLineNr", { fg = fg })

hi(0, "StatusLine", { bg = gray })
hi(0, "StatusLineNC", { bg = gray })

hi(0, "TabLine", { fg = silver, bg = gray })
hi(0, "TabLineFill", { bg = gray })

hi(0, "Folded", { fg = silver, bg = gray })

hi(0, "Statement", { fg = red })
hi(0, "Identifier", { fg = fg })
hi(0, "Function", { fg = purple })
hi(0, "@variable", { fg = fg })
hi(0, "Type", { fg = orenge })
hi(0, "Constant", { fg = blue })
hi(0, "String", { fg = skyblue })
hi(0, "Character", { link = "String" })
hi(0, "Comment", { fg = silver })
hi(0, "Special", { fg = fg })
hi(0, "PreProc", { fg = purple })

hi(0, "Pmenu", { bg = bg })