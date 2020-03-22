//////////init gameplay
//// ui
//window_set_fullscreen(true)
// ui parts enum
enum Sys_ui{
	menu,			// obj_sys controlled states
	normal,			//
	//dialog,			//
}

ui_part = Sys_ui.normal
ui_mouse_over_obj = noone	// is affected by ui elements
ui_controller = noone	//
ui_view = view_camera[0]

//draw_set_font(fnt_ui)

//// ui interacting
ui_mouse_x = window_mouse_get_x()
ui_mouse_y = window_mouse_get_y()

//// inputs
input = false
mouse_left = false
mouse_right = false
key_aim = false
key_stay = false
key_cruise = false

//// camera
display_set_gui_size(window_get_width(), window_get_height())
var view_w = view_get_wport(view_camera[0])
var view_h = view_get_hport(view_camera[0])

//// inventory
inventory = ds_list_create()
inventory[| 0] = obj_shovel
space_betw_items = 200

//// sound
audio_play_sound(snd_day_theme, 0, true)
sound_max_gain = audio_sound_get_gain(snd_day_theme)*0
sound_transition_time = 2000
audio_play_sound(snd_night_theme, 0, true)
audio_sound_gain(snd_night_theme, 0, 0)

audio_sound_gain(snd_day_theme, 0, 0)

//// background
day_phase_time = room_speed*60
night_phase_time = room_speed*6
day_reset_time = room_speed*2
its_daytime = true
bgr_id = layer_background_get_id(layer_get_id("Bgr_day"))
bgr_transition_sp = 0.02
alarm[1] = day_phase_time
day_reset = false

//// black transition surface
trans_surf = surface_create(view_w, view_h)
surface_set_target(trans_surf)
var color = c_white
draw_rectangle_color(0, 0, view_w, view_h, color, color, color, color, false)
surface_reset_target()
trans_surf_alpha = 0
trans_surf_sp = 1/day_reset_time

//// ini of debug scripts' vars
scr_debug_INI()

//// save file
save_file = "save.dat"