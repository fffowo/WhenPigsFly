if (instance_exists(obj_dialogue)) exit;
    
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(input_key))
    {
        if (global.milo_quest_done) {
            create_dialogue(dialog[2]);
        }
        else 
        {
            create_dialogue(dialog[has_interacted]);
            has_interacted = 1;
            global.milo_quest_started = true;
        }

        
    }
}
else 
{
    can_talk = false;
}