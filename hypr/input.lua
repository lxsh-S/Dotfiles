---------------
---- INPUT ----
---------------

hl.config({
	input = {
		kb_layout = "us",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",

		follow_mouse = 1,

		sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

		touchpad = {
			natural_scroll = false,
		},
	},
})

hl.gesture({
	workspace_swipe = true,
	workspace_swipe_fingers = 3,
	workspace_swipe_distance = 300,
	workspace_swipe_invert = false,
	workspace_swipe_min_speed_to_force = 20,
	workspace_swipe_cancel_ratio = 0.5,
	workspace_swipe_create_new = false,
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})
