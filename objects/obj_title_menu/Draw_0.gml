//var _dy = gui_h * 0.8; // 70% down at the bottom of the screen
//var _dx = gui_w / 2 + (sprite_width/2); // half of screen plus half of sprite
//_dx -= sprite_width;
//_dy -= sprite_width;
draw_set_font(Font_debug);

var _dx = 320 / 2 - (sprite_width/2);
var _dy = 160 - (sprite_width/2);



// width * (1/sprite width)
draw_sprite_ext(sprite_index, 0, _dx , _dy , 2, 2, 0, c_white, 1);

//_dx += 16;
//_dy += 32;

for (var i = 0; i < op_length; i++)
{
    var _c = c_white;
    if (pos == i) {
        _c = c_aqua;
    }
    //draw_text_color(_dx + op_border, _dy + op_space * i, options[menu_level, i], _c, _c, _c, _c, 1);
        draw_text_color(_dx - 20, 110 + (15 * i), options[menu_level, i], _c, _c, _c, _c, 1);
}