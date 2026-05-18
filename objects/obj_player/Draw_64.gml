
var _dx = 16;
var _dy = 16;
var _barw = sprite_get_width(spr_ass_box_1);
var _barh = sprite_get_height(spr_ass_box_1);

// properties
draw_set_font(Font_sprout);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// happiness bar
//var _happy_barw = _barw * happiness;
//var _happy_barw = _barw * 2;


//draw_sprite_ext(spr_ass_box_1, 0, _dx, _dy, 5, 5, 0, c_white, 1); // works

//draw_sprite_stretched(spr_ass_box, 0, _dx, _dy, _barw, _barh);
//draw_sprite_stretched_ext(spr_ass_box, 1, _dx, _dy, _happy_barw, _barh, c_white, 0.6);

//draw_text(_dx + _barw * 2, _dy + _barh * 2, $"You\'re {happiness}% happy!");