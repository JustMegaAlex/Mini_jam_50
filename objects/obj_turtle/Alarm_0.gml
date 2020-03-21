
//// turtle ai
dir_x = 0
dir_y = 0
dist_x = i - scary.i
dist_y = j - scary.j

if !abs(dist_x)
	dir_y = sign(dist_y)
else if !abs(dist_y)
	dir_x = sign(dist_x)
else if abs(dist_x) > abs(dist_y)
	dir_y = sign(dist_y)
else
	dir_x = sign(dist_x)

scr_try_set_grid_pos(i+dir_x, j+dir_y)
