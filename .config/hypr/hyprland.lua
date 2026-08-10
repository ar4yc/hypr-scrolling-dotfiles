---@module 'hl'

--          /\
--         /  \
--        /    \
--       /      \    Config By Axell, BTW ❄
--      /   ,,   \
--     /   |  |   \
--    /_-''    ''-_\


-- ██ ██ █▀█ █▄ █ ▀ ▀█▀ █▀█ █▀█
-- █ ▀ █ █▄█ █ ▀█ █  █  █▄█ █▀▅

hl.monitor({
    output = "",
    mode = "2560x1080@200",
    position = "0x0",
    scale = 1,
})


-- █   ▄▀█ █ █ █▄ █ █▀▀ █ █
-- █▄▄ █▀█ █▅█ █ ▀█ █▅▅ █▀█

hl.on("hyprland.start", function()
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=Hyprland")
    hl.exec_cmd("waytrogen --restore")
    hl.exec_cmd("waybar && swaync")
    hl.exec_cmd("blueman-applet")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("wl-clip-persist --clipboard both")
    hl.exec_cmd("env CLIPHIST_MAX_ITEMS=50 wl-paste --type text --watch cliphist store")
    hl.exec_cmd("env CLIPHIST_MAX_ITEMS=50 wl-paste --type image --watch cliphist store")
    hl.exec_cmd("gsr-ui launch-daemon")
    hl.exec_cmd("easyeffects --hide-window")
    hl.exec_cmd("steam -silent")
    hl.exec_cmd("env XDG_MENU_PREFIX=arch- kbuildsycoca6")
    hl.exec_cmd("~/.config/hypr/scripts/vmware-passtrouth.sh")
    hl.exec_cmd("xava")
end)


-- █▀▀ █▄ █ █ █
-- ██▄ █ ▀█ ▀▄▀

-- Apps
local Terminal = "kitty"
local FileMG = "dolphin"
local Menu = "rofi -show drun"
local Browser = "zen-browser"

-- Appearance
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")

-- Cursor
hl.env("HYPRCURSOR_THEME", "GoogleDot-White")
hl.env("XCURSOR_THEME", "GoogleDot-White")
hl.env("XCURSOR_SIZE", "12")
hl.env("HYPRCURSOR_SIZE", "12")

-- IMPORTANT
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")


-- Problem Fix
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "wayland")
hl.env("ELECTRON_ENABLE_WAYLAND", "1")
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("MOZ_DISABLE_RDD_SANDBOX", "1")

-- Hardware
hl.env("NVD_BACKEND", "direct")
hl.env("GBM_BACKEND", "nvidia-drm")
hl.env("LIBVA_DRIVER_NAME", "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("__GL_MAX_LOG_PROCESSORS", "1")
hl.env("CUDA_MODULE_LOADING", "LAZY")
hl.env("AQ_FORCE_LINEAR_BLIT", "0")


-- █ █ ▀ █▔▔ █ █ ▄▀█ █
-- ▀▅▀ █ ▂▂█ █▂█ █▀█ █▄▄

hl.config({
    general = {
        gaps_in = 10,
        gaps_out = { top = 15, bottom = 20, left = 105, right = 105 },
        col = {
            active_border = "rgba(9, 9, 9, 0.25)",
            inactive_border = "rgba(0, 0, 0, 0)",
        },
        border_size = 2,
        resize_on_border = true,
        allow_tearing = true,
        hover_icon_on_border = true,
        no_focus_fallback = true,
    },
    
    decoration = {
        rounding = 13,
        rounding_power = 2,
        active_opacity = 0.96,
        inactive_opacity = 0.95,

        blur = {
            enabled = true,
            size = 4,
            passes = 3,
            xray = false,
            new_optimizations = true,
            vibrancy = 0.943,
            contrast = 0.95,
            noise = 0,
            popups = true,
            popups_ignorealpha = 0.6,
            ignore_opacity = true,
        },
        
        shadow = {
            enabled = true,
            range = 10,
            offset = { 0, 2 },
            render_power = 3,
            color = "rgba(0, 0, 0, 0.2)",
        },
    },
})


-- ▄▀█ █▄ █ ▀ ██ ██ █▔▔
-- █▀█ █ ▀█ █ █ ▀ █ ▂▂█

hl.curve("fast", { type = "bezier", points = { {0.2, 1}, {0.4, 1} } })
hl.curve("smooth", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.04} } })

hl.animation({ leaf = "windowsIn", enabled = true, speed = 4, bezier = "smooth" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 6.7, bezier = "smooth", style = "popin 80%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5.6, bezier = "fast" })
hl.animation({ leaf = "fade", enabled = true, speed = 2, bezier = "fast" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3, bezier = "smooth" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 4, bezier = "smooth" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.7, bezier = "fast", style = "slidevert" })
hl.animation({ leaf = "border", enabled = true, speed = 14, bezier = "smooth" })


-- █   ▄▀█ █ █ █▀█ █ █ ▀█▀
-- █▄▄ █▀█  █  █▄█ █▅█  █

hl.config({
    general = {
        layout = "scrolling",
    },
    scrolling = {
        direction = "right",
        fullscreen_on_one_column = false,
        explicit_column_widths = "0.52, 1",
        column_width = 0.52,
        focus_fit_method = 1,
        follow_min_visible = 0.7,
        wrap_focus = false,
        wrap_swapcol = false,
        follow_focus = true,
        
    },
})


-- ██ ██ ▀ █▔▔ █▀▀
-- █ ▀ █ █ ▂▂█ █▅▅

hl.config({
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        mouse_move_enables_dpms = true,
        key_press_enables_dpms = true,
        vrr = false,
        enable_swallow = false,
        always_follow_on_dnd = false,
        exit_window_retains_fullscreen = false,
    },
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },
    binds = {
        scroll_event_delay = 0,
        hide_special_on_workspace_change = true,
    },
    xwayland = {
        force_zero_scaling = true,
        use_nearest_neighbor = false,
    },
})


-- █ █▄ █ █▀█ █ █ ▀█▀
-- █ █ ▀█ █▀▀ █▅█  █

hl.config({
    input = {
        kb_layout = "us,ru",
        kb_options = "grp:alt_shift_toggle,grp:shift_alt_toggle",
        repeat_rate = 65,
        repeat_delay = 200,
        follow_mouse = 1,
        sensitivity = -0.83,
        accel_profile = "flat",
        off_window_axis_events = 2,
    },
    cursor = {
        no_warps = true,
        no_hardware_cursors = true,
        no_break_fs_vrr = 0,
        hotspot_padding = 0,
    },
})

hl.device({
    name = "mouse",
    drag_lock = false,
})


-- █▃▀ █▀▀ █ █ █▂▂ ▀ █▄ █ █▀▄ █▔▔
-- █▀▄ ██▄  █  █▂█ █ █ ▀█ █▃▀ ▂▂█ 

-- Programs
hl.bind("SUPER + W", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("dolphin"))
hl.bind("SUPER + Z", hl.dsp.exec_cmd("zen-browser"))
hl.bind("SUPER + R", hl.dsp.exec_cmd("rofi -show drun"))

-- Control
hl.bind("SUPER + S", hl.dsp.window.float())
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + F", hl.dsp.window.fullscreen())
hl.bind("SUPER + SHIFT + F", hl.dsp.layout("colresize +conf"))
hl.bind("SUPER + X", hl.dsp.layout("colresize 0.52"))
hl.bind("CTRL + ALT + S", hl.dsp.window.pin())
hl.bind("CTRL + ALT + Delete", hl.dsp.exit())

-- Other Binds
hl.bind("SUPER + V", hl.dsp.exec_cmd("cliphist list| rofi -dmenu| cliphist decode| wl-copy && wtype -M ctrl -P v -m ctrl"))
hl.bind("SUPER + I", hl.dsp.exec_cmd("waytrogen"))
hl.bind("SUPER + mouse:275", hl.dsp.exec_cmd("~/.config/hypr/scripts/mute-mic.sh"))
hl.bind("SUPER + SHIFT + S", hl.dsp.exec_cmd("flameshot gui"))
hl.bind("ALT + Z", hl.dsp.exec_cmd("gsr-ui-cli toggle-show"))

-- Audio control
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true })

-- Move windows | Change size
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Focus change
hl.bind("SUPER + A", hl.dsp.layout("focus l"))
hl.bind("SUPER + D", hl.dsp.layout("focus r"))
hl.bind("SUPER + mouse_down", hl.dsp.layout("focus l"))
hl.bind("SUPER + mouse_up", hl.dsp.layout("focus r"))

-- Swap workspace
hl.bind("SUPER + 1", hl.dsp.focus({ workspace = "1" }))
hl.bind("SUPER + 2", hl.dsp.focus({ workspace = "2" }))
hl.bind("SUPER + 3", hl.dsp.focus({ workspace = "3" }))
hl.bind("SUPER + 4", hl.dsp.focus({ workspace = "4" }))
hl.bind("SUPER + 5", hl.dsp.focus({ workspace = "5" }))

-- Move windows on workspaces
hl.bind("SUPER + SHIFT + 1", hl.dsp.window.move({ workspace = "1" }))
hl.bind("SUPER + SHIFT + 2", hl.dsp.window.move({ workspace = "2" }))
hl.bind("SUPER + SHIFT + 3", hl.dsp.window.move({ workspace = "3" }))
hl.bind("SUPER + SHIFT + 4", hl.dsp.window.move({ workspace = "4" }))
hl.bind("SUPER + SHIFT + 5", hl.dsp.window.move({ workspace = "5" }))

-- Move window on workspace
hl.bind("SUPER + SHIFT + A", hl.dsp.layout("swapcol l"))
hl.bind("SUPER + SHIFT + D", hl.dsp.layout("swapcol r"))
hl.bind("SUPER + SHIFT + mouse_up", hl.dsp.layout("swapcol l"))
hl.bind("SUPER + SHIFT + mouse_down", hl.dsp.layout("swapcol r"))

-- Source
local windowrule = require("windowrule")