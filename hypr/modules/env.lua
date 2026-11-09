-- cat yams env


hl.env("XCURSOR_THEME",    "breeze_cursors-noshadow")
hl.env("XCURSOR_SIZE",     "24")
hl.env("HYPRCURSOR_THEME", "breeze_cursors")
hl.env("HYPRCURSOR_SIZE",  "24")

hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

hl.env("QT_QPA_PLATFORMTHEME",         "kde")

hl.env("LIBVA_DRIVER_NAME",         "nvidia")
hl.env("__GLX_VENDOR_LIBRARY_NAME", "nvidia")
hl.env("__GL_GSYNC_ALLOWED",        "0")
hl.env("__GL_VRR_ALLOWED",          "0")

-- set from lucid settings > environment
hl.env("QS_ICON_THEME", "Papirus-Dark")
