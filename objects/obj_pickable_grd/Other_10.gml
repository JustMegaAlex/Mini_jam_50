
if state == scr_stub
	state = scr_picked_up
else {
	state = scr_stub
	scr_move_snap()
}