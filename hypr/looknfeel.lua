-----------------------
---
---- LOOK AND FEEL ----
-----------------------

-- Refer to https://wiki.hypr.land/Configuring/Basics/Variables/
hl.config({
	general = {
		gaps_in = 10,
		gaps_out = 10,

		border_size = 2,

		col = {
			active_border = {

				-- colors = { "rgba(0, 0, 0, 0)" },
				colors = { "rgba(255, 255, 255, 0.8)" },
				-- angle = 45,
			},
			inactive_border = "rgba(595959aa)",
		},

		-- Set to true to enable resizing windows by clicking and dragging on borders and gaps
		resize_on_border = true,

		-- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
		allow_tearing = false,

		layout = "dwindle",
	},

	--REMOVE transparency--

	decoration = {
		rounding = 25,
		rounding_power = 4,

		-- Change transparency of focused and unfocused windows
		active_opacity = 1,
		inactive_opacity = 0.9,

		shadow = {
			enabled = false,
			range = 30,
			render_power = 6,
			color = 00000,
			-- color = 0xee1a1a1a,
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 4,
			vibrancy = 0.1696,
		},
	},

	animations = {
		enabled = true,
	},
})
-- Enable animations
hl.curve("md3_decel", {
	type = "bezier",
	points = {
		{ 0.05, 0.7 },
		{ 0.1, 1.0 },
	},
})

hl.curve("md3_accel", {
	type = "bezier",
	points = {
		{ 0.3, 0.0 },
		{ 0.8, 0.15 },
	},
})

hl.curve("menu_decel", {
	type = "bezier",
	points = {
		{ 0.1, 1.0 },
		{ 0.0, 1.0 },
	},
})

hl.curve("menu_accel", {
	type = "bezier",
	points = {
		{ 0.38, 0.04 },
		{ 1.0, 0.07 },
	},
})

hl.animation({
	leaf = "windows",
	enabled = true,
	speed = 3,
	3,
	bezier = "md3_decel",
	style = "popin 60%",
})

hl.animation({
	leaf = "windowsIn",
	enabled = true,
	speed = 3,
	3,
	bezier = "md3_decel",
	style = "popin 60%",
})

hl.animation({
	leaf = "windowsOut",
	enabled = true,
	speed = 3,
	3,
	bezier = "md3_accel",
	style = "popin 60%",
})

hl.animation({
	leaf = "fade",
	enabled = true,
	speed = 3,
	3,
	bezier = "md3_decel",
})

hl.animation({
	leaf = "workspaces",
	enabled = true,
	speed = 7,
	3,
	bezier = "menu_decel",
	style = "slide",
})
