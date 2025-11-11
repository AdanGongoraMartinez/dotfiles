-- put wezterm api
local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()

-- wezterm.on("gui-startup", function(cmd)
-- 	if mux then
-- 		local tab, pane, window = mux.spawn_window(cmd or {})
-- 		window:gui_window():maximize()
-- 	end
-- end)

-- Set colorscheme
config.color_scheme = "Catppuccin Mocha"

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 15

config.initial_rows = 100
config.initial_cols = 205

config.enable_tab_bar = false
config.window_decorations = "NONE"

config.window_padding = {
	left = "0.5cell",
	right = "0.5cell",
	top = "0.5cell",
	bottom = "0.0cell",
}

-- config.window_background_image = "/home/adan/Imágenes/wallpapers/gradient-synth-cat.png"
-- config.window_background_opacity = 0.9

return config
