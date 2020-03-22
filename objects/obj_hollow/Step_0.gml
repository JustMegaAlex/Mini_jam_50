
var box = instance_place(x, y, obj_box)
if box {
	instance_destroy(box)
	instance_change(obj_hollow_filled, true)
}
	