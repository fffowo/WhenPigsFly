if (instance_exists(obj_dialogue)) exit;

if (path_exists(npc_path))
{
    sprite_index = walk_anim;
    
    var _down = false;
    // we're walking down the screen
    if (path_get_point_y(npc_path, 1) < self.direction)
    {
        _down = true;
    }
    else {
        _down = false;
    }
    
    if (_down == true)
    {
        sprite_index = spr_npc_bitty_walk_front;
    } else 
    {
        sprite_index = spr_npc_bitty_walk_up;
    }
}


// dialogue
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(input_key))
    { 
        path_end();
        if (global.quests[char_index].quest_started)
        {
            path_end();
            create_dialogue([
                {
                    name: "Bitty",
                    msg: "I'm gonna follow you!",
                    portrait: spr_npc_blank
                } 
            ])
            follow_player = true;
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


if (follow_player) {

    follow();

}
