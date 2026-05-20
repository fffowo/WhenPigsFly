// vertical offset
function draw_shadow(_x_offset = 0, _y_offset=0, draw = true){
    if (draw == false) exit;
    draw_sprite_ext(spr_ass_shadow, 0, x + _x_offset, y + _y_offset, 1, 1, 0, #8c7369, 0.2);
}