-- cat yams binds


local Mod = "SUPER"
local Terminal = "kitty"
local FileBrowser = "/home/bun/.local/bin/ski"


-- Programs

hl.bind(Mod .. " + Return",    hl.dsp.exec_cmd(Terminal))
hl.bind(Mod .. " + E",         hl.dsp.exec_cmd(FileBrowser))
hl.bind(Mod .. " + CTRL + S",  hl.dsp.exec_cmd("flameshot gui --raw | wl-copy"), {})
hl.bind(Mod .. " + B",         hl.dsp.exec_cmd("bash /home/bun/.config/hypr/scripts/zen-toggle.sh"), {})


-- Sound --

hl.bind(Mod .. " + equal", hl.dsp.exec_raw("bash /home/bun/.config/hypr/scripts/volume.sh up"), { repeating = true })
hl.bind(Mod .. " + minus", hl.dsp.exec_raw("bash /home/bun/.config/hypr/scripts/volume.sh down"), { repeating = true })
hl.bind(Mod .. " + P",     hl.dsp.exec_raw("bash /home/bun/.config/hypr/scripts/toggle-audio-output.sh"), {})


-- Windows & Workspaces --

hl.bind(Mod .. " + SHIFT + Q", hl.dsp.window.kill())
hl.bind(Mod .. " + Q",         hl.dsp.window.close())

hl.bind(Mod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(Mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

hl.bind(Mod .. " + F", hl.dsp.window.fullscreen())
hl.bind(Mod .. " + D", hl.dsp.window.float({ action = "toggle" }))

hl.bind(Mod .. " + Down",  hl.dsp.focus({ direction = "d" }))
hl.bind(Mod .. " + Up",    hl.dsp.focus({ direction = "u" }))
hl.bind(Mod .. " + Right", hl.dsp.focus({ direction = "r" }))
hl.bind(Mod .. " + Left",  hl.dsp.focus({ direction = "l" }))

hl.bind(Mod .. " + SHIFT + Down",  hl.dsp.window.move({ direction = "d" }))
hl.bind(Mod .. " + SHIFT + Up",    hl.dsp.window.move({ direction = "u" }))
hl.bind(Mod .. " + SHIFT + Right", hl.dsp.window.move({ direction = "r" }))
hl.bind(Mod .. " + SHIFT + Left",  hl.dsp.window.move({ direction = "l" }))

hl.bind(Mod .. " + ALT + Down",  hl.dsp.window.resize({ x = 0, y = 10, relative = true }), { repeating = true })
hl.bind(Mod .. " + ALT + Up",    hl.dsp.window.resize({ x = 0, y = -10, relative = true }), { repeating = true })
hl.bind(Mod .. " + ALT + Right", hl.dsp.window.resize({ x = 10, y = 0, relative = true }), { repeating = true })
hl.bind(Mod .. " + ALT + Left",  hl.dsp.window.resize({ x = -10, y = 0, relative = true }), { repeating = true })

hl.bind(Mod .. " + Z", hl.dsp.focus({ workspace = "-1" }))
hl.bind(Mod .. " + X", hl.dsp.focus({ workspace = "+1" }))

hl.bind(Mod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(Mod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(Mod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(Mod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(Mod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(Mod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(Mod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(Mod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(Mod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(Mod .. " + 0", hl.dsp.focus({ workspace = 10 }))

hl.bind(Mod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1,  follow = false }))
hl.bind(Mod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2,  follow = false }))
hl.bind(Mod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3,  follow = false }))
hl.bind(Mod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4,  follow = false }))
hl.bind(Mod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5,  follow = false }))
hl.bind(Mod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6,  follow = false }))
hl.bind(Mod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7,  follow = false }))
hl.bind(Mod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8,  follow = false }))
hl.bind(Mod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9,  follow = false }))
hl.bind(Mod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10, follow = false }))


-- MultiMedia --

hl.bind("XF86AudioRaiseVolume",  hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume",  hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",         hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true })
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("brightnessctl set 5%+"), 						    { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), 						    { locked = true, repeating = true })
hl.bind("XF86AudioPlay",         hl.dsp.global("quickshell:mediaToggle"),                           { locked = true })
hl.bind("XF86AudioNext",         hl.dsp.global("quickshell:mediaNext"),                             { locked = true })
hl.bind("XF86AudioPrev",         hl.dsp.global("quickshell:mediaPrev"),                             { locked = true })


