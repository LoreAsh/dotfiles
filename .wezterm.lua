local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.enable_wayland = true

-- config.font = wezterm.font('Source Code Pro')
-- config.font = wezterm.font('UDEV Gothic 35HS')
config.font = wezterm.font('Cozette')
--config.font = wezterm.font('Adwaita Mono')
config.font_size = 15

config.color_scheme = 'Selenized Dark (Gogh)'
config.colors = {
	background = '#17484A',

	tab_bar = {
		inactive_tab_edge = '#303236',
		active_tab = {
			-- bg_color = '#46A5A2',
			-- fg_color = '#2B2F3B',
			bg_color = '#202226',
			-- fg_color = '#c1cdd0',
			fg_color = '#46A5A2',
			-- fg_color = '#DD573C',

			underline = "Double",
		},
		inactive_tab = {
			-- bg_color = '#17484A',
			bg_color = '#303236',
			fg_color = '#888888',
		}
	},
}

-- config.use_fancy_tab_bar = false

config.window_frame = {
	font = wezterm.font { family = 'Cozette', weight = 'Bold' },
	font_size = 15.0,

	-- active_titlebar_bg = '#17484A',
	active_titlebar_bg = '#303236',
	inactive_titlebar_bg = '#303236',

}

-- changes font when switching to NeoVim
-- wezterm.on('user-var-changed', function(window, pane, name, value)
--     userVars = pane:get_user_vars()
--     overrides = window:get_config_overrides() or {}
--     print(overrides)
--     if string.match(userVars["WEZTERM_PROG"], "nvim") then
--     overrides.font = wezterm.font({
--         family = "Source Code Pro" -- The Font in Nvim
--     })
--     else
-- overrides = nil
--     end
--     window:set_config_overrides(overrides)
-- end)

return config
