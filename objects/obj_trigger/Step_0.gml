
if place_meeting(x, y, trig_obj) {
	dialog_box_inst.visible = true
	dialog_box_inst.arr_current = variable_instance_get(dialog_box_inst, arr_dialog)
	dialog_box_inst.text = dialog_box_inst.arr_current[0]
	instance_destroy()
}