
scr_update_i_j()

if !scr_grid_occupied(i, j) and !obtuse {
	instance_create_layer(scr_x(i), scr_y(j), "Instances", obj_pit)
	obtuse = true
}