if (instance_exists(obj_dialogue)) exit;
    
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(input_key))
    { 
        if (obj_npc2.quest_done)
        {
            create_dialogue(dialog[3]);
        } 

        else if (obj_npc2.quest_started == true && has_interacted > 0) 
    {
            create_dialogue(dialog[2]);
            obj_npc2.quest_done = true;
    } 
        else { 
            create_dialogue(dialog[has_interacted]);
            has_interacted = 1;
                 
    }


    }

}
else 
{
    can_talk = false;
}