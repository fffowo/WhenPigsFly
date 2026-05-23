// dialogue
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(vk_space))
    { 
        create_dialogue([{
            name: "NPC",
            msg: "This is a task object!"
}])
        
    }
}
else 
{
    can_talk = false;
}

