var _dy = gui_h * 0.8; // 70% down at the bottom of the screen
var _dx = gui_w / 2 + (sprite_width/2); // half of screen plus half of sprite
_dx -= sprite_width;
_dy -= sprite_width;
draw_set_font(Font_debug);

// width * (1/sprite width)
draw_sprite_ext(sprite_index, 0, _dx , _dy , width/sprite_width, height/sprite_height, 0, c_white, 1);

_dx += 16;
_dy += 32;

for (var i = 0; i < op_length; i++)
{
    var _c = c_white;
    if (pos == i) {
        _c = c_aqua;
    }
    draw_text_color(_dx + op_border, _dy + op_space * i, options[menu_level, i], _c, _c, _c, _c, 1);
}