if (instance_exists(obj_dialogue)) exit;


// dialogue
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    if (keyboard_check_pressed(vk_space))
    {
    create_dialogue([{
        name: "You",
        msg: "The soil looks dry...",
        portrait: spr_npc_blank
    }])        
    }

}