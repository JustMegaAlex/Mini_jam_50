
var inst = id
if argument_count == 3
	inst = argument[2]
	
if collision_point(scr_x(argument0), scr_y(argument1), 
					obj_parent_solid, false, true) {
	return false
}

inst.i = argument[0]
inst.j = argument[1]

return true