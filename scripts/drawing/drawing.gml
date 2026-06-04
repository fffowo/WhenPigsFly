// vertical offset
function draw_shadow(_x_offset = 0, _y_offset=0, draw = true){
    if (draw == false) exit;
    draw_sprite_ext(spr_ass_shadow, 0, x + _x_offset, y + _y_offset, 1, 1, 0, c_white, 1);
}


function draw_icon(_x_offset = 0, _y_offset=0, _icon = spr_ass_bubble)
{
    if (distance_to_object(obj_player) < 8 && !instance_exists(obj_dialogue))
    {
     draw_sprite(_icon, 0, x + _x_offset, y + _y_offset); 
       
    }
}

function draw_happy(_x_offset = 0, _y_offset = 0)
{
    instance_create_depth(x, y, -1000, obj_lvl);
}