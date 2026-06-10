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

        if (array_contains(obj_inventory.found_items, "peach fruit"))
        {
            create_dialogue(dialog[2]);
            global.quests[char_index].quest_done = true;
        }
        
        if (global.quests[char_index].quest_done) {
            create_dialogue(dialog[3]);
        }
        else 
        {
            create_dialogue(dialog[has_interacted]);
            has_interacted = 1;
            global.quests[char_index].quest_started = true;
        }
    }
}
else 
{
    can_talk = false;
}


