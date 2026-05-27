// textbox parameters

depth = -1000;

textbox_width = 300;
textbox_height = 60;

border = 20;
line_sep = 12;
line_width = textbox_width - border*2;
y_offset = 20;
x_offset = sprite_get_width(spr_player_port); 


textb_spr = spr_ass_txtbx;
textb_img = 0;
textb_img_speed = 0;

// the text
page = 0;
text[0] = "Hello world!";
//text[0] = "Lorem ipsum dolor sit ec elit faucibus aliquam. ";
//text[1] = "Neque porro quisquam estsectetur, adipisci velit...";
//text[2] = "Hello world!";

page_number = 0;

text_length[0] = string_length(text[0]);
draw_char = 0;
text_speed = 1;

setup = false;

