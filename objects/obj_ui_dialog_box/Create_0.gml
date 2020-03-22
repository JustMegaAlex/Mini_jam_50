viewport_ratio = view_wport[0]/camera_get_view_width(obj_sys.ui_view)

text_displ_x = -sprite_xoffset + 25
text_displ_y = -sprite_yoffset + 30

text_sep = font_get_size(fnt_dialog) + 10
text_width = sprite_width - 20
text = ""

//// dialogs arrays
arr_current = 0
str_current = 0

arr_start = [
	"Finally! I thought you're dead",
	"Seems we stucked on this damn island",
	"Try to move those boxes",
	"We can't even go and look around the Island"
]

arr_maze_complete = [
	"Great. Let's move on",
	"I'm pretty hungry",
	"I wanna catch that turtle and make a schnitzel of it"
]

arr_cactus_destroyed = [
	"Damn! She ate those whole cactus!",
	"She will not leave her shell",
	"Crap, what will we do?"
]

arr_shovel_found = [
	"Oh, nice",
	"We can dig a couple of graves with it, huh?"
]