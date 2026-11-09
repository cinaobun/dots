-- cat yams minflair

local Mod = "SUPER"
local IPC = "qs -c min ipc call "
local W   = IPC .. "widgets toggle "

-- binds

hl.bind(Mod .. " + W",         hl.dsp.exec_cmd(W   .. "wallpaper"))           -- Wallpapers
hl.bind(Mod .. " + V",         hl.dsp.exec_cmd(W   .. "clipboard"))           -- Clipboard
hl.bind(Mod .. " + Space",     hl.dsp.exec_cmd(W   .. "launcher"))            -- App Launcher
hl.bind(Mod .. " + CTRL + P",  hl.dsp.exec_cmd(W   .. "powerMenu"))           -- Power Menu
hl.bind(Mod .. " + M",         hl.dsp.exec_cmd(W   .. "music"))               -- Media Player
hl.bind(Mod .. " + L",         hl.dsp.exec_cmd(IPC .. "lockScreen toggle"))   -- Lock
hl.bind(Mod .. " + S",         hl.dsp.exec_cmd(W   .. "minflair_settings"))   -- Settings
hl.bind(Mod .. " + C",         hl.dsp.exec_cmd(W   .. "controlCenter"))       -- Control Center
hl.bind(Mod .. " + SHIFT + S", hl.dsp.exec_cmd(W   .. "screenshot"))          -- Screenshot
hl.bind(Mod .. " + Grave",     hl.dsp.exec_cmd(W   .. "notificationsCenter")) -- Notifications Center
hl.bind(Mod .. " + A",         hl.dsp.exec_cmd(W   .. "dashboard"))           -- Github Dashboard

-- wrules

hl.window_rule({
    name   = "float-minflair-settings",
    match  = { class = "org.quickshell" },
    float  = true,
    center = true,
    size   = "1000 600",
})

