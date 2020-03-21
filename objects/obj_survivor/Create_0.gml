
image_speed = 0

//// moving
sp = 2.5
dir = 0

//// interacting
hand_x = x
hand_y = y
i = 0
j = 0
pick_up_dist = 10
item = noone

//// grid
cell_w = 32
cell_h = 32
global.GRID_SIZE = cell_w

//// path collision sys
bound_path = pth_boundary
// get points
bound_point_num = path_get_number(bound_path)
for(i=0; i<bound_point_num; i++) {
	arr_bound_x[i] = path_get_point_x(bound_path, i)
	arr_bound_y[i] = path_get_point_y(bound_path, i)
}