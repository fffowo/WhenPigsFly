if (instance_exists(obj_dialogue)) {
    exit;
}

if (path_exists(npc_path))
{
    //sprites = [spr_npc_ziggy_roll_1, spr_npc_ziggy_roll_2, spr_npc_ziggy_roll_1, spr_npc_ziggy_roll_2];

    walk_sprite_direction(sprites);
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

