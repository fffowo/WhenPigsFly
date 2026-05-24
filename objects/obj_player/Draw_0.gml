draw_shadow(0, 1);

if (place_meeting(x, y, obj_ground_tile))
{
    draw_sprite(spr_ass_box, 0, x, y);
}

draw_self();