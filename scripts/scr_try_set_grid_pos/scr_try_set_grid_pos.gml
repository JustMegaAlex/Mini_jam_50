
var inst = id
if argument_count == 3
	inst = argument[2]

var obst = collision_point(scr_x(argument[0]), 
							scr_y(argument[1]), 
							obj_parent_solid, 
							false, true)
							
if inst.object_index == obj_box
	if obst	
		if obst.object_index == obj_hollow {
			inst.i = argument[0]
			inst.j = argument[1]
			return true
		}

if obst
	return false

inst.i = argument[0]
inst.j = argument[1]

return true