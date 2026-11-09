-- cat yams win rules


hl.window_rule({
    name           = "suppress-maximize",
    match          = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },
    no_focus = true,
})

hl.window_rule({
    name  = "float-system-dialogs",
    match = { class = "(pavucontrol|nm-connection-editor|blueman-manager|org.kde.polkit-kde-authentication-agent-1|xdg-desktop-portal-gtk)" },
    float = true,
})

hl.window_rule({
    name         = "don't-lock / idle-inhibit-fullscreen",
    match        = { class = ".*" },
    idle_inhibit = "fullscreen",
})

hl.layer_rule({
    name         = "blur-quickshell",
    match        = { namespace = "quickshell" },
    blur         = true,
    ignore_alpha = 0.3,
})

hl.window_rule({
	name  = "float-swiv",
	match = { class = "^swiv$" },
    float = true,
})

hl.window_rule({
  name = "zen-opaque",
  match = { class = "^(zen)$" },
  opacity = "1.0 override 1.0 override",
})

hl.window_rule({
  name = "zenb-opaque",
  match = { class = "^(zen-browser)$" },
  opacity = "1.0 override 1.0 override",
})

