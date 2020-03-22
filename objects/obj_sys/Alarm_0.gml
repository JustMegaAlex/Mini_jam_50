
//// day/night transition
//// bgr
var alpha = layer_background_get_alpha(bgr_id)
var approach_to = !its_daytime
layer_background_alpha(bgr_id, scr_approach(alpha, approach_to, bgr_transition_sp))

if alpha != approach_to
	alarm[0] = 1
else
	its_daytime = !its_daytime