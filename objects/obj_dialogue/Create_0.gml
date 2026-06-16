messages = [];
current_message = -1; // this is an index!!
current_char = 0;
draw_message = "";
color = c_black;

char_speed = 0.5;
input_key = vk_space;

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();

alarm[0] = 5; // noise

counter_snd = 0;
squicks = [snd_squick, snd_squick2];
