if (!needs_name && !greeting) {
            create_dialogue([
            {
                msg: $"Your name is {global.player_name}? That's so nice!",
                name: "NPC",
                portrait: spr_npc_blank
            }
        ]);
    greeting = true;
}

// dialogue
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8 && needs_name)
{
    can_talk = true;
    if (keyboard_check_pressed(vk_space))
    { 
        create_dialogue([
            {
                msg: "Hello! What's your name?",
                name: "NPC",
                portrait: spr_npc_blank
            }
            
        ]);
        
        trigger_room = true;
        

    }
    else 
    {
        can_talk = false;
    }
}