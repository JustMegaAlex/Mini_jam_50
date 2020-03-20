
move_snap(obj_survivor.cell_w, obj_survivor.cell_h)

if place_meeting(x, y, obj_parent_solid) {
	var step = 0
	while true {
		var cell_w = obj_survivor.cell_w
		var cell_h = obj_survivor.cell_h
		if !place_meeting(x+cell_w*step, y, obj_parent_solid) {
			x += cell_w*step
			break
		}
		if !place_meeting(x, y+cell_h*step, obj_parent_solid) {
			y += cell_h*step
			break
		}
		if !place_meeting(x-cell_w*step, y, obj_parent_solid) {
			x -= cell_w*step
			break
		}
		if !place_meeting(x, y-cell_h*step, obj_parent_solid) {
			y -= cell_h*step
			break
		}
	}
}