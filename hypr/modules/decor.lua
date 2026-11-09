-- cat yams dec


hl.config({
    misc = {
        disable_hyprland_logo    = true,
        disable_splash_rendering = true,
    },

    general = {
        gaps_in     		    = 6,
        gaps_out    		    = 12,
        
		border_size 		    = 0,
        resize_on_border        = true,
        
        ["col.active_border"]   = active,
        ["col.inactive_border"] = inactive,
        
        layout                  = "scrolling",
    },

    decoration = {
        rounding         = 18,
        rounding_power   = 3,
        
        active_opacity   = 1.00,
        inactive_opacity = 1.00,
        
        shadow = {
            enabled      = true,
            range        = 4,
    	},

        blur = {
            enabled           = true,
         
            brightness        = 0.9,
            contrast          = 2,
            noise             = 0,
            vibrancy          = 1,
         
            passes            = 2,         
            size              = 12,
         
            special           = false,
            new_optimizations = true,
    	},
	},

	dwindle = {
        force_split    = 0,
        smart_resizing = true,
    },
})

