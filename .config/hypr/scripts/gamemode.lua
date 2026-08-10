local game_mode = (hl.get_config("decoration.blur.enabled") == false)

if game_mode then
    hl.exec_cmd("hyprctl reload")
else
    hl.config({
        general = {
            gaps_in = 5, gaps_out = 3,
            border_size = 0,
        },
        decoration = {
            shadow = { enabled = false },
            blur = { enabled = false },
            rounding = 0,
            active_opacity = 1,
            inactive_opacity = 1,
        }
    })
end