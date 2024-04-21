local wez = require("wezterm")

local conf = {
  font = wez.font_with_fallback({"UbuntuMono Nerd Font", "Source Han Sans SC"}),
  font_size = 10,

  color_scheme = 'GitHub Dark',

  enable_tab_bar = false,
  enable_scroll_bar = false,

  window_padding = {
    top = 8,
    bottom = 0,
    left = 2,
    right = 2,
  },

  window_background_opacity = 0.8,
  text_background_opacity = 0.8,
}

return conf
