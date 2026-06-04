if (instance_exists(obj_dialogue)) exit;
if (instance_exists(obj_inventory)) exit;


if (path_exists(npc_path))
{
    sprite_index = walk_anim;
    var _down = false;
    // we're walking down the screen
    if (path_get_point_y(npc_path, 1) > self.direction)
    {
        _down = true;
    }
    else {
        _down = false;
    }
    
    if (_down == true)
    {
        sprite_index = spr_npc_noodle_walk_down;
    } else 
    {
        sprite_index = spr_npc_noodle_walk_up;
    }
}


// dialogue
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


