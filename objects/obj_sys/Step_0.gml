//// inputs
input = keyboard_check(vk_anykey) or mouse_check_button(mb_any)

mouse_left = mouse_check_button_pressed(mb_left)
mouse_right = mouse_check_button_pressed(mb_right)
key_aim = mouse_check_button_pressed(mb_right)
key_stay = keyboard_check_pressed(ord("S"))
key_cruise = keyboard_check_pressed(ord("A"))
key_menu = keyboard_check_pressed(vk_escape)

//// ui interacting
ui_mouse_x = window_mouse_get_x()
ui_mouse_y = window_mouse_get_y()

ui_mouse_over_obj = collision_point(ui_mouse_x, ui_mouse_y, obj_ui, true, true)

switch ui_part {
	case Sys_ui.normal: {
		if key_menu {
			ui_part = Sys_ui.menu
			with obj_ui_menu_button
				visible = true
		}
		break
	}
		
	case Sys_ui.menu: {
		if key_menu {
			ui_part = Sys_ui.normal
			with obj_ui_menu_button
				visible = false
		}
	}
}