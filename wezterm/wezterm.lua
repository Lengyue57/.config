local wez = require("wezterm")

local conf = {
  -- 字体
  font = wez.font_with_fallback({"UbuntuMono Nerd Font", "Source Han Sans SC"}),
  font_size = 10,

  color_scheme = 'GitHub Dark',
  -- foreground = "#e6edf3",
  -- background = "#0d1117",

  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  use_fancy_tab_bar = false,
  tab_bar_at_bottom = true,
  enable_scroll_bar = false,

  -- 窗口边距
  window_padding = {
    top = 8,
    bottom = 0,
    left = 2,
    right = 2,
  },

  -- 窗口透明度
  window_background_opacity = 0.8,
  text_background_opacity = 0.8,

  enable_wayland = false,

  -- 按键绑定
  keys = {
    {
      mods = "CMD",
      key = "C",
      action = wez.action.CopyTo "ClipboardAndPrimarySelection",
    },
    {
      mods = "CMD",
      key = "V",
      action = wez.action.PasteFrom "Clipboard",
    },
    {
      mods = "CMD",
      key = "V",
      action = wez.action.PasteFrom "PrimarySelection",
    },
  },
}

return conf
