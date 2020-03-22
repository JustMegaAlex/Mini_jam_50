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

if keyboard_check_pressed(ord("E")) {
	alarm[0] = 1
	audio_sound_gain(snd_day_theme, sound_max_gain*!its_daytime, sound_transition_time)
	audio_sound_gain(snd_night_theme, sound_max_gain*its_daytime, sound_transition_time)
}

if room == room0 and keyboard_check_pressed(vk_numpad2)
	room_goto(room1)

if room == room1 and keyboard_check_pressed(vk_numpad1)
	room_goto(room0)
	
if keyboard_check_pressed(vk_f5)
	game_save(save_file)

if keyboard_check_pressed(vk_f6) and file_exists(save_file)
	game_load(save_file)
