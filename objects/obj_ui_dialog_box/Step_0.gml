
x = (talking_object.x - camera_get_view_x(obj_sys.ui_view))*viewport_ratio
y = (talking_object.y - camera_get_view_y(obj_sys.ui_view))*viewport_ratio

if keyboard_check_pressed(vk_space) {
	str_current++
	if str_current == array_length_1d(arr_current) {
		// turn dialog off
		visible = false
		arr_current = 0
		str_current = 0
	}
	else {
		text = arr_current[str_current]
	}
}