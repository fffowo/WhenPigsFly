// movement     
if (can_move){

    var _hor = clamp(move_x - x, -1, 1); 
    var _ver = clamp(move_y - y, -1, 1); 
    move_and_collide(_hor * move_speed, _ver * move_speed, tilemap);
    
     if (_ver != 0 || _hor != 0)
    {
        sprite_index = walk_anim;
    }
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

