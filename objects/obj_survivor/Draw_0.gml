
draw_sprite(spr_lighten, 0, scr_x(hand_i), scr_y(hand_j))

draw_self()

for(i=0; i<bound_point_num-1; i++) 
	draw_line(arr_bound_x[i], 
				arr_bound_y[i], 
				arr_bound_x[i+1], 
				arr_bound_y[i+1])