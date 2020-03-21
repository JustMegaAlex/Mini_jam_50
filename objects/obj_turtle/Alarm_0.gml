
//// turtle ai
dir_x = 0
dir_y = 0
dist_x = i - scary.i
dist_y = j - scary.j

if !abs(dist_x)
	dir_y = sign(dist_y)
	
else if !abs(dist_y)
	dir_x = sign(dist_x)
	
else if (abs(dist_x) > abs(dist_y)) {
	
	if scr_grid_free(i, j + sign(dist_y))
		dir_y = sign(dist_y)
		
	else if scr_grid_free(i + sign(dist_x), j)
		dir_x = sign(dist_x)
}

else if scr_grid_free(i + sign(dist_x), j)
	dir_x = sign(dist_x)
	
	else if scr_grid_free(i, j + sign(dist_y))
		dir_y = sign(dist_y)

//scr_try_set_grid_pos(i+dir_x, j+dir_y)

i += dir_x
j += dir_y