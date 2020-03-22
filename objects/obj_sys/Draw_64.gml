
//// debug scripts
scr_debug_scripts_update()

draw_surface_ext(trans_surf, 0, 0, 1, 1, 0, c_white, trans_surf_alpha)

draw_set_font(fnt_sys)

scr_debug_show_var("day_time", alarm[1])
//scr_debug_show_var("reset", alarm[2])
//scr_debug_show_var("alpha", trans_surf_alpha)


//for(i=0; i<ds_list_size(inventory); i++)
//	draw_sprite_ext(inventory[|i].sprite_index, 
//	0, 
//	obj_ui_draw_point.x + i*space_betw_items, 
//	obj_ui_draw_point.y,
//	4, 4, 0, c_white, 1)