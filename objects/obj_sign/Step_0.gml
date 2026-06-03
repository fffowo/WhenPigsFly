if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    if (keyboard_check_pressed(vk_space))
    { 
        create_dialogue(text);
        
    }
}