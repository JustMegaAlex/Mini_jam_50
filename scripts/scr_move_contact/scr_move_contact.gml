///@arg speed
///@arg dir
x += lengthdir_x(argument0, argument1)
y += lengthdir_y(argument0, argument1)

//// solid objects collision
var obst = instance_place(x, y, obj_obstacle)
if obst {
	// box pushing
	if obst.object_index == obj_box {
		var _side = false // which side to push to
		var _x = x
		var _y = y
		while place_meeting(x, y, obst) {
			x -= lengthdir_x(1, dir)
			if !place_meeting(x, y, obst) {
				_side = false
				break
			}
			_side = true
			y -= lengthdir_y(1, dir)
		}
		//// horizontal contact
		var _i = obst.i+!_side*h_move
		var _j = obst.j+_side*v_move
		if collision_point(scr_x(_i), scr_y(_j), obj_parent_solid, false, true) {
			return
		}
		obst.x += (_x - x)*!_side * 1.2
		obst.y += (_y - y)*_side * 1.2
		obst.i += !_side*h_move
		obst.j += _side*v_move
		x = _x
		y = _y
		//// if it's scary stone
		if obst.object_index == obj_scary_stone
			with obj_turtle { event_perform(ev_other, ev_user0) }
		return
	}
	//// move out of obst
	while place_meeting(x, y, obst) {
        x -= lengthdir_x(1, dir)
        y -= lengthdir_y(1, dir)
	}
	return
}

//island bounds
for(i=0; i<bound_point_num-1; i++) {
	while collision_line(arr_bound_x[i], 
						arr_bound_y[i], 
						arr_bound_x[i+1], 
						arr_bound_y[i+1], 
						id, false, false) {
		x -= lengthdir_x(1, dir)
		y -= lengthdir_y(1, dir)	
	}
}
while collision_line(arr_bound_x[0], 
						arr_bound_y[0], 
						arr_bound_x[bound_point_num-1], 
						arr_bound_y[bound_point_num-1], 
						id, false, false) {
	x -= lengthdir_x(1, dir)
	y -= lengthdir_y(1, dir)	
}
