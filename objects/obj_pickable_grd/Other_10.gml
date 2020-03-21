
if state == scr_stub
	state = scr_picked_up
else {
	scr_update_i_j()
	if scr_grid_free(i, j) {
		state = scr_stub
		scr_move_snap()
	}
}