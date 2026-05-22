if (instance_exists(obj_dialogue)) exit; 
    
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    if (keyboard_check_pressed(vk_space))
    { 
        create_dialogue([
            {
                name: "You",
                msg: "I can eat this fruit for 10 happiness!"
            }
        ], c_lime);
        
        obj_player.happiness += 10;
        obj_player.inventory = self;
    }
}

