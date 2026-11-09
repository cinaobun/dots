-- cat yams boot


hl.on("hyprland.start", function()
    hl.exec_cmd("awww-daemon")
    
    hl.exec_cmd("hyprpm reload -nn && hyprctl dismissnotify")
    hl.exec_cmd("hyprctl setcursor breeze_cursors 24")
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("systemctl --user start hyprland-session.target")
    
    hl.exec_cmd("qs -c minflair -d")
    hl.exec_cmd("openrgb -c B773FF")
    
    hl.exec_cmd(os.getenv("HOME") .. "/.config/hypr/scripts/cliphist-watch.sh")
    hl.exec_cmd("sleep 3 && qs -c minflair ipc call lockScreen toggle")
end)
