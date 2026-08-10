---@module 'hl'


-- ▄▀█ █▀█ █▀█ █▔▔
-- █▀█ █▀▀ █▀▀ ▂▂█

hl.layer_rule({
    match = { namespace = "rofi" },
    blur = true,
    ignore_alpha = 0.4, 
})

hl.layer_rule({
    match = { namespace = "waybar" },
    blur = true,
    ignore_alpha = 0.4, 
})

hl.layer_rule({
    match = { namespace = "swaync-control-center" },
    blur = true,
    ignore_alpha = 0.4,
})

-- Volume Control
hl.window_rule({
    name  = "pavucontrol",
    match = {
        class = "pavucontrol-qt",
    },
    float = true,
    size = { 659, 410 },
    move = { "((monitor_w-668)-10)", "monitor_h*0+35" },
    pin = true,
})

-- Bluetooth manager
hl.window_rule({
    name  = "Overskride",
    match = {
        class = "blueman-manager",
    },
    float = true,
    center = true,
    size = { 920, 685 },
    pin = true,
})

-- Wifi menu
hl.window_rule({
    name  = "nm-applet",
    match = {
        class = "nm-connection-editor",
    },
    float = true,
    size = { 398, 388 },
    move = { "((monitor_w-398)-100)", "monitor_h*0+35" },
    pin = true,
})

hl.window_rule({
    name  = "waytrogen",
    match = {
        title = ".*Waytrogen.*",
    },
    float = true,
    center = true,
    size = { 1295, 928 },
})

hl.window_rule({
    name  = "mpv",
    match = {
        class = "mpv",
    },
    float = true,
    center = true,
    no_blur = true,
    opaque = true,
    keep_aspect_ratio = true,
})

hl.window_rule({
    name  = "mpv_audio",
    match = {
        class = "mpv_only_audio_mpv",
    },
    float = true,
    center = true,
    opacity = 0.75,
})

hl.window_rule({
    name  = "qView",
    match = {
        class = "com.interversehq.qView",
    },
    float = true,
    center = true,
    size = { "monitor_w*0.5", "monitor_h*0.6" },
    min_size = { 200, 200 },
    max_size = { "monitor_w*0.9", "monitor_h*0.9" },
    opaque = true,
})

hl.window_rule({
    name  = "Dialect",
    match = {
        class = "app.drey.Dialect",
    },
    float = true,
    center = true,
    size = { 814, 320 },
})

hl.window_rule({
    name  = "Waydroid",
    match = {
        class = "Waydroid",
    },
    opaque = true,
})

hl.window_rule({
    name  = "MissionCenter",
    match = {
        class = "io.missioncenter.MissionCenter",
    },
    float = true,
    center = true,
    size = { 1045, 553 },
})

hl.window_rule({
    name  = "youtube_music",
    match = {
        class = "com.github.th_ch.youtube_music",
    },
    opacity = 0.883,
    min_size = { 424, 704 },
})

--Zen History

hl.window_rule({
    name  = "zen-history",
    match = {
        class = "zen|firefox",
        title = ".*(Библиотека|Library).*",
    },
    float = true,
    center = true,
    opaque = true,
    size = { "monitor_w*0.4", "monitor_h*0.8" },
})

-- Picture-in-Picture

hl.window_rule({
    name  = "PiP",
    match = {
        title = "(?i).*(Картинка в картинке|Картинка-в-картинке|Picture in Picture|Picture-in-Picture|PiP).*",
    },
    float = true,
    size = { 587, 330 },
    pin = true,
    opaque = true,
    keep_aspect_ratio = true,
    border_size = 0,
    rounding = 17,
})

hl.window_rule({
    name  = "discord-pip",
    match = {
        class = "vesktop|discord",
        initial_title = "Discord Popout",
    },
    float = true,
    max_size = { 519, 290 },
    min_size = { 519, 290 },
    move = { "monitor_w*0.001", "monitor_h*0.25" },
    pin = true,
    opaque = true,
    no_blur = true,
    no_initial_focus = true,
    rounding = 17,
})

hl.window_rule({
    name  = "telegram-call",
    match = {
        class = "telegram|io.github.tdesktop_x64.TDesktop",
        title = "negative:.*64Gram.*",
        initial_title = "negative:.*64Gram.*",
    },
    float = true,
    center = true,
    size = { "monitor_w*0.35", "monitor_h*0.53" },
})

hl.window_rule({
    name  = "telegram-media",
    match = {
        class = "telegram|io.github.tdesktop_x64.TDesktop", initial_title = ".*(Просмотр медиа|Media).*",
    },
    float = true,
    center = true,
    size = { "monitor_w*0.85", "monitor_h*0.85" },
})

hl.window_rule({
    name  = "vmware",
    match = {
        class = "Vmware",
    },
    opaque = true,
    no_blur = true,
})

hl.window_rule({
    name  = "portal",
    match = {
        class = 1,
    },
    float = true,
    center = true,
    size = { "monitor_w*0.45", "monitor_h*0.8" },
})

hl.window_rule({
    name  = "hyprland-share",
    match = {
        class = "hyprland-share-picker",
    },
    float = true,
    center = true,
    size = { "window_w", "window_h" },
    persistent_size = true,
    pin = true,
})

hl.window_rule({
    name  = "gsr ui",
    match = {
        title = "(gsr ui|gsr notify)",
    },
    float = true,
    move = { "monitor_w*0", "monitor_h*0" },
    size = { "monitor_w", "monitor_h" },
    opaque = true,
    rounding = 0,
    no_blur = true,
    border_size = 0,
    pin = true,
})

hl.window_rule({
    name  = "kdenlive",
    match = {
        class = "org.kde.kdenlive",
        title = ".* Kdenlive.*",
    },
    tile = true,
    size = { "window_w", "window_h" },
    max_size = { 2548, 1040 },
    rounding = 3,
    border_size = 0,
    opaque = true,
})

hl.window_rule({
    name  = "kdenlive-settings",
    match = {
        class = "org.kde.kdenlive",
        title = ".*Configure.*",
    },
    float = true,
    center = true,
    size = { 1274, 816 },
    opaque = true,
})

hl.window_rule({
    name  = "kdenlive-splash",
    match = {
        class = "org.kde.kdenlive",
        title = ".*Splash Screen.*",
    },
    float = true,
    center = true,
    size = { "window_w", "window_h" },
    opaque = true,
})

hl.window_rule({
    name  = "PrismLauncher_download",
    match = {
        class = "org.prismlauncher.PrismLauncher",
        title = "(?i).*(Загрузить|Download).*",
    },
    float = true,
    center = true,
    size = { 1037, 734 },
})

hl.window_rule({
    name  = "PrismLauncher_console",
    match = {
        class = "org\\.prismlauncher\\.PrismLauncher",
        title = "(?i).*(консоли|Console).*",
    },
    float = true,
    center = true,
    size = { 1224, 912 },
})
