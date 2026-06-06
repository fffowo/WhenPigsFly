if (instance_exists(obj_dialogue)) exit;
if (instance_exists(obj_inventory)) exit;



if (path_exists(npc_path))
{
    walk_sprite_direction([walk_anim, spr_npc_noodle_walk_up, walk_anim, spr_npc_noodle_walk_down]);

}




// dialogue
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(input_key))
    { 
        path_speed = 0;
        //create_dialogue(dialog[has_interacted]);
        //has_interacted = 1;
        
        create_dialogue([{name: "Noodle", msg: $"{self.y}, {path_get_point_y(npc_path, 0)}", portrait: spr_npc_blank}])
        
    }
}
else 
{
    can_talk = false;
}


