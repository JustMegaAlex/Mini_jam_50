///@arg speed
///@arg dir
x += lengthdir_x(argument0, argument1)
y += lengthdir_y(argument0, argument1)

//столкновение с астероидами
var obst = instance_place(x, y, obj_obstacle)
if obst {
	// move out of obst
	while place_meeting(x, y, obst) {
        x -= lengthdir_x(1, dir)
        y -= lengthdir_y(1, dir)
	}
}