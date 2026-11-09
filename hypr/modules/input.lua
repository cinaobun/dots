-- cat yams input


hl.config({
    input = {
        kb_layout           = "us",
        kb_options          = "compose:ralt",
        follow_mouse        = 1,
        sensitivity         = -0.6,
        accel_profile       = "flat",
        repeat_rate         = 65,
        repeat_delay        = 225,
        numlock_by_default  = false,
    },
    cursor = {
        no_hardware_cursors = true,
    },
    binds = {
        scroll_event_delay  = 40,
    },
})
