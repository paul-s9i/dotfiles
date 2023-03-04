local wezterm = require("wezterm")

-- WSLg Ubuntu as default
local wsl_domains = wezterm.default_wsl_domains()

for _, dom in ipairs(wsl_domains) do
  dom.default_cwd = "~"
end

return {
  wsl_domains = wsl_domains,
  default_domain = "WSL:Ubuntu",
  default_prog = { "wsl.exe" },

  font = wezterm.font("CaskaydiaCove NF"),
  font_size = 11.5,
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },

  color_scheme = "Batman",
  colors = {
    background = 'black',
    -- Make the selection text color fully transparent.
    -- When fully transparent, the current text color will be used.
    -- selection_fg = 'none',
    -- Set the selection background color with alpha.
    -- When selection_bg is transparent, it will be alpha blended over
    -- the current cell background color, rather than replace it
    -- selection_bg = 'rgba(50% 50% 50% 50%)',
  },
  window_background_opacity = 1.0,
  -- window_background_image = './background/nightcity.png',
  window_background_image_hsb = {
    -- Darken the background image by reducing it to 1/3rd
    brightness = 0.2,

    -- You can adjust the hue by scaling its value.
    -- a multiplier of 1.0 leaves the value unchanged.
    hue = 1.0,

    -- You can adjust the saturation also.
    saturation = 1.0,
  },
  enable_tab_bar = false,
}
