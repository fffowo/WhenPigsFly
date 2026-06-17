if (instance_exists(obj_dialogue)) exit; 

if (instance_exists(obj_player) && distance_to_object(obj_player) < 16)
{
    if (keyboard_check_pressed(vk_space))
    { 
        var _index = check_inventory_for_item("stick");
        if (_index == -1) {
            
            msg = global.quests[get_char_index("bonnie")].quest_started == true ? "Is that Bonnie's towel? " : "Is that a towel? ";
            
            create_dialogue([
            {
                name: "You",
                msg: string_concat(msg, "I can't reach it from here..."),
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