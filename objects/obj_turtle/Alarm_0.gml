
//// turtle ai
dir_x = 0
dir_y = 0
dist_x = i - scary.i
dist_y = j - scary.j

if !abs(dist_x)
	dir_y = sign(dist_y)
else if !abs(dist_y)
	dir_x = sign(dist_x)
else if (abs(dist_x) > abs(dist_y)) and !collision_point(scr_x(i), scr_y(j+sign(dist_y)), obj_parent_solid, false, true)
	dir_y = sign(dist_y)
else if !collision_point(scr_x(i+sign(dist_x)), scr_y(j), obj_parent_solid, false, true)
	dir_x = sign(dist_x)

//scr_try_set_grid_pos(i+dir_x, j+dir_y)

i += dir_x
j += dir_y