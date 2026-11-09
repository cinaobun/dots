-- cat yams lucid

local Mod = "SUPER"

hl.bind(Mod .. " + W",       hl.dsp.exec_cmd("qs ipc call -- launcher wallpaper"))          -- Wallpapers
hl.bind(Mod .. " + V",       hl.dsp.exec_cmd("qs ipc call -- launcher clipboard"))          -- Clipboard
hl.bind(Mod .. " + Space",   hl.dsp.exec_cmd("qs ipc call -- launcher toggle"))             -- App Launcher
hl.bind(Mod .. " + CTRL+ P", hl.dsp.exec_cmd("qs ipc call -- launcher power"))              -- Power Menu
hl.bind(Mod .. " + L",       hl.dsp.exec_cmd("qs ipc call -- lock lock"))                   -- Lock
hl.bind(Mod .. " + T",       hl.dsp.exec_cmd("qs ipc call -- launcher theme"))              -- Theme
hl.bind(Mod .. " + S",       hl.dsp.exec_cmd("qs ipc call -- settings show general"))       -- Settings
