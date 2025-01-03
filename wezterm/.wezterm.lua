-- Pull in the wezterm API
local wezterm = require("wezterm")

-- -- This table will hold the configuration.
-- local config = {
-- 	force_reverse_video_cursor = true,
-- 	colors = {
-- 		foreground = "#CBE0F0",
-- 	background = "#011423",
-- 	cursor_bg = "#47FF9C",
-- 	cursor_border = "#47FF9C",
-- 	cursor_fg = "#011423",
-- 	selection_bg = "#033259",
-- 	selection_fg = "#CBE0F0",
-- 	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
-- 	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
-- 	},
-- }
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This will hold the configuration.
-- local config = wezterm.config_builder()

-- This is where you actually apply your config choices


-- config.color_scheme = 'Catppuccin Mocha'
config.color_scheme = 'Tokyo Night'
-- my coolnight colorscheme
config.colors = {
-- 	foreground = "#CBE0F0",
	background = "#000000",
-- 	cursor_bg = "#47FF9C",
-- 	cursor_border = "#47FF9C",
-- 	cursor_fg = "#011423",
-- 	selection_bg = "#033259",
-- 	selection_fg = "#CBE0F0",
-- 	-- ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
-- 	-- brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
-- 	ansi = {
-- 		'black',
-- 		'maroon',
-- 		'green',

-- 		'olive',
-- 		'navy',
-- 		'purple',
-- 		'teal',
-- 		'silver',
-- 	  },
-- 	  brights = {
-- 		'grey',
-- 		'red',
-- 		'lime',
-- 		'yellow',
-- 		'blue',
-- 		'fuchsia',
-- 		'aqua',
-- 		'white',
-- 	  },

}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages


-- This is where you actually apply your config choices
-- config.window_decorations = "RESIZE" -- removes window title bar
config.force_reverse_video_cursor = true
--  change
-- config.window_background_opacity = 0.95
config.window_background_opacity = 0.8
config.font = wezterm.font("Mononoki Nerd Font")
config.hide_tab_bar_if_only_one_tab = true

-- activate ONLY if windows --

config.default_domain = 'WSL:Ubuntu'
config.front_end = "OpenGL"

-- Spawn a fish shell in login mode
-- config.default_prog = { '/home/linuxbrew/.linuxbrew/bin/fish', '-l' }
-- config.default_prog = { 'zsh', '-c', 'tmux' }
-- and finally, return the configuration to wezterm
return config