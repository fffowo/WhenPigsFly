// movement     
if (can_move){
    var move_x = random_range(xstart - 10, xstart + 10);
    var move_y = random_range(ystart - 10, ystart + 10);
    var move_speed = 1; 
    var tilemap = layer_tilemap_get_id("Tiles_col");
        
    var _hor = clamp(move_x - x, -1, 1); 
    var _ver = clamp(move_y - y, -1, 1); 
    move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);
}


// dialogue
if (instance_exists(obj_dialogue)) exit;
    
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(input_key))
    {
        create_dialogue(dialog[has_interacted]);
        has_interacted = 1;
        
    }
}
else 
{
    can_talk = false;
}

