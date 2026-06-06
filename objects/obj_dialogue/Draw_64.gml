var _dx = 100;
var _dy = gui_h * 0.7; // 70% down at the bottom of the screen
var _boxw = gui_w * 50 / 100; // 33 percent
var _boxh = gui_h - _dy; // fills the rest of the screen

draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

draw_set_font(Font_sprout);

_dx = gui_w / 2;
draw_sprite_ext(spr_ass_txtbx, 0, _dx , _dy, 3, 3, 0, c_white, 1);

var _port = messages[current_message].portrait;

draw_sprite_ext(_port, 0, 208, _dy + 20, 3, 3, 0, c_white, 1);

// write name
_dx = 370;
_dy += 55;
var _name = messages[current_message].name;
draw_set_halign(fa_left);
draw_set_color(global.char_colors[$ _name]);
draw_text(_dx, _dy, _name);
draw_set_color(c_white);

// draw message
_dx += 20;
_dy += 50;
draw_text_ext(_dx, _dy, draw_message, -1, _boxw - (_dx * 5)); // includes margins and wrapping





/// BELOW HERE WORKS -- OLD 
/// // textbox needs to be top left 
//_dx = 100
//draw_sprite_ext(spr_ass_txtbx, 0, _dx, _dy, 3, 3, 0, c_white, 0.5);



// TODO 
// portrait 
//var _port = messages[current_message].portrait;
//draw_sprite_ext(_port, 0, _dx + 24, _dy + 20, 3, 3, 0, c_white, 1);

//
//// write name
//_dx += 180;
//_dy += 55;
//var _name = messages[current_message].name;
//draw_set_halign(fa_left);
//draw_set_color(color);
//draw_text(_dx, _dy, _name);
//draw_set_color(c_white);
//
//// draw message
//_dx += 20;
//_dy += 50;
//draw_text_ext(_dx, _dy, draw_message, -1, _boxw - (_dx * 5)); // includes margins and wrapping
