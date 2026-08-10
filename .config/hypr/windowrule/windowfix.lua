---@module 'hl'


-- █▀▀ ▀ ▀▃▀ █▔▔
-- █▀  █ ▅▀▅ ▂▂█

hl.window_rule({
    name  = "windows_size",
    match = {
        class = ".*",
    },
    size = { "window_w", "window_h" },
})

hl.window_rule({
    name  = "xwayland-video-bridge-fixes",
    match = {
        class = "xwaylandvideobridge",
    },
    max_size = { 1, 1 },
    no_focus = true,
    no_anim = true,
    no_blur = true,
    opacity = 0.0,
})