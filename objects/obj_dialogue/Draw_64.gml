var _dx = 100;
var _dy = gui_h * 0.8; // 70% down at the bottom of the screen
var _boxw = gui_w * 50 / 100; // 33 percent
var _boxh = gui_h - _dy; // fills the rest of the screen

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

// draw box
//draw_sprite_stretched(spr_ass_txt_box, 0, _dx, _dy, _boxw, _boxh);
draw_sprite_stretched(spr_ass_txtbx, 0, _dx, _dy, _boxw, _boxh);

draw_set_font(Font_sprout);

// TODO 
// draw portrait
//draw_sprite_ext(spr_player_port, 0, _dx, _dy, 5, 5, 0, 0, 1);

// write name
_dx += 128;
_dy += 42;
var _name = messages[current_message].name;
draw_set_halign(fa_left);
draw_set_color(global.char_colors[$ _name]);
draw_text(_dx, _dy, _name);
draw_set_color(c_white);

// draw message
_dx += 16;
_dy += 32;
draw_text_ext(_dx, _dy, draw_message, -1, _boxw - (_dx * 5)); // includes margins and wrapping

