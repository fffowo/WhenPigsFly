if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(vk_space))
    { 
        if !(global.milo_quest_started) 
        {
            msg = "Look around for something to do!";
        }
        if (global.milo_quest_started) 
        {
            msg = "You started a quest, huh?\nCool.";
        }
        if (global.milo_quest_done)
        {
            msg = "Congratulations! Are you happier now?"
        }

        create_dialogue([
            {
                name: "NPC",
                msg: msg
            }
        ]);
        
    }
}
else 
{
    can_talk = false;
}
