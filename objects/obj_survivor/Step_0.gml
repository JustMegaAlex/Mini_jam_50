
depth = -y

//// input 
key_right = keyboard_check(vk_right)
key_left = keyboard_check(vk_left)
key_up = keyboard_check(vk_up)
key_down = keyboard_check(vk_down)

left_free = !place_meeting(x-1,y,obj_obstacle)
right_free = !place_meeting(x+1,y,obj_obstacle)
down_free = !place_meeting(x,y+1,obj_obstacle)
up_free = !place_meeting(x,y-1,obj_obstacle)

//// movement
h_move = key_right * right_free - key_left * left_free
v_move = key_down * down_free - key_up * up_free

if(abs(h_move) || abs(v_move))
{
    dir = point_direction(0,0,h_move,v_move)
	scr_move_contact(sp, dir)
}