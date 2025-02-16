local wezterm = require('wezterm')
local act = wezterm.action
local border_color = "rgba(255,28,0,0.2)";  --"#770000"
local config = {
    leader = { key = 'Enter', mods = 'CMD' },
    color_scheme = 'hardhacker',
    macos_window_background_blur = 12,
    window_background_opacity = 0.8,
    tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
    font_size=16.0,
    window_decorations = "RESIZE",
    hide_tab_bar_if_only_one_tab=true,
    window_frame = {
        border_left_width = '2px',
        border_top_height = '2px',
        border_right_width = '2px',
        border_bottom_height = '2px',
        border_left_color = border_color,
        border_top_color = border_color,
        border_right_color = border_color,
        border_bottom_color = border_color,
    },
    window_padding = {
        left = 14,
		top = 14,
		right = 0,
		bottom = 0,
	},
    colors = {
        foreground="#cbd6b5",
        tab_bar = {
            background = "rgba(0,0,28,0.1)"
        },
    },
    keys = {
        {
            key = "Space",
            mods = "CMD",
            action = act.SendKey{key='b', mods = 'CTRL'},
        },
        {
            key = "/",
            mods = "CTRL",
            action = act.SendKey{key="_", mods='CTRL'},
        },
        {
            key = "1",
            mods = "LEADER",
            action = act.SendString("echo \"Hello World\"")
        }

    },
}
return config
