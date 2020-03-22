
//// turtle ai
dir_x = 0
dir_y = 0

dir = point_direction(scary.i, scary.j, i, j)
dir = dir div 90 * 90

var can_move = false

if scr_grid_free(i + lengthdir_x(1, dir), j + lengthdir_y(1, dir))
	dir += 0
else if scr_grid_free(i + lengthdir_x(1, dir+90), j + lengthdir_y(1, dir+90))
	dir += 90
else if scr_grid_free(i + lengthdir_x(1, dir-90), j + lengthdir_y(1, dir-90))
	dir -= 90
else 
	return false

dir_x = lengthdir_x(1, dir)
dir_y = lengthdir_y(1, dir)


//if !abs(dist_x) and scr_grid_free(i, j + sign(dist_y))
//	dir_y = sign(dist_y)
	
//else if !abs(dist_y) and scr_grid_free(i + sign(dist_x), j)
//	dir_x = sign(dist_x)
	
//else if (abs(dist_x) > abs(dist_y)) {
	
//	if scr_grid_free(i, j + sign(dist_y))
//		dir_y = sign(dist_y)
		
//	else if scr_grid_free(i + sign(dist_x), j)
//		dir_x = sign(dist_x)
//}

//else if scr_grid_free(i + sign(dist_x), j)
//	dir_x = sign(dist_x)
	
//	else if scr_grid_free(i, j + sign(dist_y))
//		dir_y = sign(dist_y)

//scr_try_set_grid_pos(i+dir_x, j+dir_y)

i += dir_x
j += dir_y