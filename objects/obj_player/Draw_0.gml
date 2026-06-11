

if (place_meeting(x, y, obj_ground_tile))
{

    draw_self();
    draw_shadow(-8, 1);

    // dirt tiles
    var _inst = instance_nearest(x, y, obj_ground_tile);
    var _depth = gpu_get_depth();
    gpu_set_depth(-1000);
    var _sprite = _inst.terrain;
    var _subf = (xspeed != 0 || yspeed != 0) ? -1 : 0;
    //draw_sprite(_sprite, _subf, x, y);    
    draw_sprite_ext(_sprite, _subf, x - 8, y, 1, 1, 0, c_white, 1);
    gpu_set_depth(_depth);
    

} else 
{
    draw_shadow(-8, 1);
    draw_self();
}
