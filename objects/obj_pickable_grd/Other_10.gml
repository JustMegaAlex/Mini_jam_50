
if state == scr_stub
	state = scr_picked_up
else {
	i = round(x / global.GRID_SIZE)
	j = round(y / global.GRID_SIZE)
	if scr_grid_free(i, j) {
		state = scr_stub
		scr_move_snap()
	}
}