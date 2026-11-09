-- cat yams ukishima

local Mod = "SUPER"

hl.bind(Mod .. " + W",     	 hl.dsp.exec_cmd("qs -c ukishima ipc call ukishima wallpaper DP-2")) -- Wallpapers
hl.bind(Mod .. " + V",     	 hl.dsp.exec_cmd("qs -c ukishima ipc call ukishima clipboard DP-2")) -- Clipboard
hl.bind(Mod .. " + Space", 	 hl.dsp.exec_cmd("qs -c ukishima ipc call ukishima launcher  DP-2")) -- App Launcher
hl.bind(Mod .. " + G",     	 hl.dsp.exec_cmd("qs -c ukishima ipc call ukishima gameMode  DP-2")) -- Game Mode
hl.bind(Mod .. " + CTRL+ P", hl.dsp.exec_cmd("qs -c ukishima ipc call ukishima power     DP-2")) -- Power Menu
hl.bind(Mod .. " + Grave",   hl.dsp.exec_cmd("qs -c ukishima ipc call ukishima peek      DP-2")) -- Pill
hl.bind(Mod .. " + M",       hl.dsp.exec_cmd("qs -c ukishima ipc call ukishima media     DP-2")) -- Media
hl.bind(Mod .. " + L",       hl.dsp.exec_cmd("~/.config/quickshell/ukishima/scripts/lock.sh"))
