if (instance_exists(obj_dialogue)) exit;
if (instance_exists(obj_inventory)) exit;


if (global.quests[char_index].quest_done == true)
{
    path_end();
    sprite_index = spr_npc_noodle;   
} 

else 
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
        var _index = check_inventory_for_item("peach fruit");
        
        if (global.quests[char_index].quest_done) {
            create_dialogue(dialog[3]);
        }
        else if (_index != -1)
        {
            create_dialogue(dialog[2]);
            global.quests[char_index].quest_done = true;
            array_delete(global.inventory, _index, 1);
          
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


