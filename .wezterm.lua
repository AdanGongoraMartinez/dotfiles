-- put wezterm api
local wezterm = require("wezterm")
-- local mux = wezterm.mux
local config = wezterm.config_builder()

-- Set colorscheme
config.color_scheme = "Gruvbox Dark (Gogh)"

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 15

config.warn_about_missing_glyphs = false

config.initial_rows = 100
config.initial_cols = 205

config.enable_tab_bar = false
config.window_decorations = "NONE"

-- config.window_padding = {
-- 	left = "0.5cell",
-- 	right = "0.5cell",
-- 	top = "0.5cell",
-- 	bottom = "0.0cell",
-- }

return config
