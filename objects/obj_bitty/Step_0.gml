if (instance_exists(obj_dialogue)) exit;

if (path_exists(npc_path))
{
    sprite_index = walk_anim;
    
    
}


// dialogue
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(input_key))
    { 
        
        if (global.bitty.quest_started)
        {
            path_end();
            create_dialogue([
                {
                    name: "Bitty",
                    msg: "I'm gonna follow you!"
                } 
            ])
            follow_player = true;
        } 
        else 
        {
            create_dialogue(dialog[has_interacted]);
            has_interacted = 1;
            global.bitty.quest_started = true;
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