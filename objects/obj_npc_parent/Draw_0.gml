draw_shadow(1);
draw_self();

if (can_talk && !instance_exists(obj_dialogue))
{
    draw_sprite(spr_ass_bubble, 0, x, y - 16); // 16 px above
}

//draw_text(x, y +  5, "test: " + string(real(can_move)));