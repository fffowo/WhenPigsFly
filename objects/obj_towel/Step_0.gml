if (instance_exists(obj_dialogue)) exit; 

if (instance_exists(obj_player) && distance_to_object(obj_player) < 12)
{
    if (keyboard_check_pressed(vk_space))
    { 
        var _index = check_inventory_for_item("stick");
        if (_index == -1) {
            create_dialogue([
            {
                name: "You",
                msg: "Is that Bonnie's towel? I can't reach it from here...",
                portrait: spr_player_port_question
            }
        ]);
        } 
        else
          {
            // TODO USE STICK 
            // then remove stick 
            create_dialogue([
            {
                name: "You",
                msg: $"I found a {name}!",
                portrait: sprite_index
            }
        ]);
            array_insert(global.inventory, -1, item);
        
            instance_destroy(self);
        }

    }
}