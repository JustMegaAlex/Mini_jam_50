
//// debug scripts
scr_debug_scripts_update()

for(i=0; i<ds_list_size(inventory); i++)
	draw_sprite(inventory[|i].sprite_index, 0, obj_ui_draw_point.x + i*space_betw_items, obj_ui_draw_point.y)