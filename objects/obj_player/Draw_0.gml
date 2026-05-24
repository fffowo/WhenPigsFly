


if (place_meeting(x, y, obj_ground_tile))
{
    draw_shadow(0, 1);
    draw_self();
    var _depth = gpu_get_depth();
    gpu_set_depth(-1000);
    draw_sprite(obj_ground_tile.terrain, -1, x, y+1);
    gpu_set_depth(_depth);
} 
else {
    draw_shadow(0, 1);
    draw_self();
}

