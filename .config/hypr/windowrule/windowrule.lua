---@module 'hl'


-- ▄▀█ █▀█ █▀█ █▔▔  █▀▀ ▀ ▀▃▀ █▔▔
-- █▀█ █▀▀ █▀▀ ▂▂█  █▀  █ ▅▀▅ ▂▂█

hl.window_rule({
    name  = "dolphin",
    match = {
        class = "org.kde.dolphin",
        title = ".*/.*",
    },
    min_size = { 1060, 548 },
})

hl.window_rule({
    name  = "dolphin-Properties",
    match = {
        class = "org.kde.dolphin",
        initial_title = ".*Properties.*|.*Choose Application.*",
    },
    float = true,
    center = true,
})

hl.window_rule({
    name  = "copymove-dolphin",
    match = {
        class = "org.kde.dolphin",
        title = ".*(Cop|Mov|Progress).*",
    },
    float = true,
})

hl.window_rule({
    name  = "create-dolphin",
    match = {
        class = "org.kde.dolphin",
        title = ".*(File Already Exists|Progress Dialog|Creating directory).*",
    },
    float = true,
    center = true,
    size = { "window_w", "window_h" },
})

hl.window_rule({
    name  = "steam",
    match = {
        class = "steam",
        initial_title = "^Steam$",
    },
    float = false,
})

hl.window_rule({
    name  = "steam-notification",
    match = {
        class = "steam", initial_title = "(?i).*notification.*",
    },
    float = true,
    center = false,
    no_blur = true,
})

hl.window_rule({
    name  = "steam-dropwindow",
    match = {
        class = "steam", initial_title = "negative:(Steam|(?i).*notification.*|())",
    },
    float = true,
    center = true,
    size = { 920, 571 },
})

hl.window_rule({
    name  = "steam-updater",
    match = {
        class = "",
        title = "Steam",
    },
    float = true,
    center = true,
    size = { "window_w", "window_h" },
})

hl.window_rule({
    name  = "steam-settings",
    match = {
        class = "steam",
        title = "(?i).*(Настройки|Settings).*",
    },
    float = true,
    center = true,
    size = { 840, 717 },
})

hl.window_rule({
    name  = "steam-friends",
    match = {
        class = "steam",
        title = "(?i).*(Список друзей|Friends List).*",
    },
    float = true,
    center = true,
    size = { 925, 591 },
})

hl.window_rule({
    name  = "steam-other",
    match = {
        class = "steam",
        initial_title = "(?i).*(Завершение работы|Shutdown|Войти|Sign|Запуск...|Launch...|О Steam|About Steam|окно|Dialog|Скриншоты|Screenshots|Свойства|Properties).*",
    },
    float = true,
    center = true,
    size = { "window_w", "window_h" },
})

hl.window_rule({
    name  = "steam-add-games",
    match = {
        class = "steam",
        initial_title = "(?i).*(Добавить стороннюю игру|Add Non-Steam Game).*",
    },
    float = true,
    center = true,
    size = { 900, 790 },
})

hl.window_rule({
    name  = "steam-games",
    match = {
        class = ".*steam_app.*",
    },
    float = true,
    center = true,
    no_blur = true,
    opaque = true,
})

hl.window_rule({
    name  = "peazip",
    match = {
        class = "peazip",
        title = "(?i).*(Extract|info).*",
    },
    float = true,
    center = true,
    size = { "window_w*0.9", "window_w*0.9" },
})

hl.window_rule({
    name  = "flameshot",
    match = {
        class = "flameshot",
    },
    float = true,
    size = { "monitor_w", "monitor_h" },
    move = { 0, 0 },
    opaque = true,
    rounding = 0,
    border_size = 0,
    no_blur = true,
    no_anim = true,
})

hl.window_rule({
    name  = "flameshot-settings",
    match = {
        class = "flameshot", initial_title = "(?i).*(Настройки|Settings).*",
    },
    float = true,
    size = { "window_w", "window_h" },
    center = true,
    no_blur = false,
    no_anim = false,
    stay_focused = false,
    pin = false,
    border_size = 2,
    rounding = 6,
    opaque = true,
})

hl.window_rule({
    name  = "flameshot-save",
    match = {
        class = "flameshot",
        title = "(?i).*(Сохранить|Save).*",
    },
    float = true,
    center = true,
    size = { 1044, 761 },
    no_blur = false,
    no_anim = false,
    stay_focused = false,
    pin = false,
    border_size = 2,
    rounding = 6,
    opaque = true,
})

hl.window_rule({
    name  = "qBittorrent_all",
    match = {
        class = "org.qbittorrent.qBittorrent",
    },
    float = true,
    center = true,
})

hl.window_rule({
    name  = "qBittorrent",
    match = {
        class = "org.qbittorrent.qBittorrent",
        title = ".*qBittorrent v.*",
    },
    tile = true,
})

hl.window_rule({
    name  = "offtile-class",
    match = {
        class = "(?i).*(file_progress|confirm|dialog|download|notification|error|splash|org.kde.kdialog|wizard|assistant|auth|permission).*",
    },
    float = true,
    center = true,
})

hl.window_rule({
    name  = "offtile-title",
    match = {
        title = "(?i).*(Open Files|Save File|Choose Files|Please choose a file).*",
    },
    float = true,
    center = true,
    size = { "window_w", "window_h" },
    persistent_size = true,
})

-- VMware
hl.define_submap("passthrough", function()
    hl.bind("SUPER" .. " + " .. "F", hl.dsp.window.fullscreen())
    hl.bind("SUPER" .. " + " .. "F", hl.dsp.submap("reset"))
end)
