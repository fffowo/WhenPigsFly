
draw_set_font(Font_debug);
draw_set_halign(fa_left);
draw_set_valign(fa_top);



//draw_text(x, y + 5, "x:" + string(x));
//draw_text(x, y + 20, "y:" + string(y));
//
//draw_text(_x, _y +  5, "_x:" + string(_x));
//draw_text(_x, _y + 20, "_y:" + string(_y));
draw_text(x, y + 5, "x");
draw_text(_x, _y +  5, $"test: {test}");
