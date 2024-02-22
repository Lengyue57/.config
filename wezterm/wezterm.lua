local wez = require("wezterm")

local conf = {
  font = wez.font_with_fallback({"UbuntuMono Nerd Font", "Source Han Sans SC"}),
  font_size = 10,

  enable_tab_bar = false,
  enable_scroll_bar = false,

  window_background_opacity = 0.8,
  text_background_opacity = 0.8,
}

return conf