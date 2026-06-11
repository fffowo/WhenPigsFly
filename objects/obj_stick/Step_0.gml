if (instance_exists(obj_dialogue)) exit; 

if (instance_exists(obj_player) && distance_to_object(obj_player) < 16)
{
    if (keyboard_check_pressed(vk_space))
    { 
        create_dialogue([
                        {
                name: "You",
                msg: "WHOA",
                portrait: spr_player_port_shocked
            },
            {
                name: "You",
                msg: "WHAT A COOL STICK!",
                portrait: spr_player_port_shocked
            },
            {
                name: "You",
                msg: "I'll take it with me! You never know when you need a cool stick!",
                portrait: spr_player_port
            }
        ]);
        
        array_insert(global.inventory, -1, item);
        
        instance_destroy(self);
    }
}
