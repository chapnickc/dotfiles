local wezterm = require('wezterm')
local act = wezterm.action
local config = {
    color_scheme = 'Batman',
    window_background_opacity = 0.8,
    tab_bar_at_bottom = true,
	use_fancy_tab_bar = false,
    colors = {
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
            mods = "CMD",
            action = act.SendString("echo \"Hello World\"")
        }

    },
    font_size=16.0,
    window_decorations = "RESIZE"
}
return config
