if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    if (keyboard_check_pressed(vk_space))
    {
        sprite_index = spr_chest;
        sprite_index = spr_chest_open;
        
        instance_create_depth(x, y - 16, 0, obj_pinwheel);
        
        create_dialogue([
                {
                    name: "You",
                    msg: $"I found a pinwheel!",
                    portrait: spr_ass_pinwheel_1
                }
            ]);
            
            array_insert(global.inventory, -1, {name: "pinwheel", sprite : spr_ass_pinwheel_1, txt: "A pinwheel I found in a chest."});
        
    }
}