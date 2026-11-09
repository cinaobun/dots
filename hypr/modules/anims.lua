-- cat yams anims


hl.config({
    animations = {
        enabled = true,
    },
})

hl.curve("pillMorph",    { type = "bezier", points = { { 0.00, 0.98 }, { 0.32, 1.00 } } })
hl.curve("quick",        { type = "bezier", points = { { 0.15, 0 },    { 0.1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 },   { 0.75, 1 } } })
hl.curve("md3_decel",    { type = "bezier", points = { { 0.05, 0.7 },  { 0.1, 1 } } })
hl.curve("md3_accel",    { type = "bezier", points = { { 0.3, 0 },     { 0.8, 0.15 } } })
hl.curve("overshot",     { type = "bezier", points = { { 0.05, 0.9 },  { 0.1, 1.1 } } })
hl.curve("bouncy",       { type = "spring", mass = 0.8, stiffness = 120, dampening = 15 })
hl.curve("quick",        { type = "spring", mass = 1,   stiffness = 225, dampening = 25 })

hl.animation({ leaf = "global",     	enabled = true, speed = 6,      bezier = "pillMorph" })
hl.animation({ leaf = "windows",    	enabled = true, speed = 6,      bezier = "pillMorph" })
hl.animation({ leaf = "windowsIn",  	enabled = true, speed = 1,      spring = "quick" })
hl.animation({ leaf = "windowsOut", 	enabled = true, speed = 1,      spring = "quick" })
hl.animation({ leaf = "workspaces", 	enabled = true, speed = 2,      spring = "quick", style = "slidevert" })

