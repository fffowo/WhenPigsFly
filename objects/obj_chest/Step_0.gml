if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    if (check_inventory_for_item("pinwheel") == -1)
    {
        if (keyboard_check_pressed(vk_space))
        {
            sprite_index = spr_chest;
            sprite_index = spr_chest_open;
            
            instance_create_depth(x + 8, y - 4, 0, obj_pinwheel);
    
            create_dialogue([
                    {
                        name: "You",
                        msg: $"I found a pinwheel!",
                        portrait: spr_ass_pinwheel_1
                    }
                ]);
            alarm[0] = 2*60;
        }
        }

}