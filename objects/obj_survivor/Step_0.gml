
depth = -y

//// input 
key_right = keyboard_check(vk_right)
key_left = keyboard_check(vk_left)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)
key_interact = keyboard_check_pressed(ord("Z"))

left_free = !place_meeting(x-1,y,obj_obstacle)
right_free = !place_meeting(x+1,y,obj_obstacle)
down_free = !place_meeting(x,y+1,obj_obstacle)
up_free = !place_meeting(x,y-1,obj_obstacle)

//// movement
//h_move = key_right * right_free - key_left * left_free
//v_move = key_down * down_free - key_up * up_free

h_move = key_right - key_left
v_move = key_down - key_up

if(abs(h_move) || abs(v_move)) {
    dir = point_direction(0,0,h_move,v_move)
	scr_move_contact(sp, dir)
}


hand_x = x //+ lengthdir_x(pick_up_dist, dir)
hand_y = y //+ lengthdir_y(pick_up_dist, dir)
hand_i = round(x / global.GRID_SIZE)
hand_j = round(y / global.GRID_SIZE)
var pick_up = instance_place(hand_x, hand_y, obj_parent_pickable)

if !pick_up
	pick_up = instance_place(scr_x(hand_i), scr_y(hand_j), obj_parent_pickable)


if key_interact {
	if item = noone {
		if pick_up {
			item = pick_up
			with item { event_perform(ev_other, ev_user0) }
		}
	}
	else {
		with item { event_perform(ev_other, ev_user0) }
		item = noone
	}
}
	






