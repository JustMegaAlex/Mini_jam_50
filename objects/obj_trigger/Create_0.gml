
dialog_box_inst = instance_find(obj_ui_dialog_box, 0)
trig_obj = noone

var obj = 0
while object_exists(obj) {
	if trig_obj_name == object_get_name(obj) {
		trig_obj = obj
		break
	}
	obj++
}

if !trig_obj
	show_error("Trigger object not found: "+trig_obj_name, false)