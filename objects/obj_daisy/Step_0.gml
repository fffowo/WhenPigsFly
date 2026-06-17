
if (instance_exists(obj_dialogue)) exit;
    
if (instance_exists(obj_player) && distance_to_object(obj_player) < 8)
{
    can_talk = true;
    if (keyboard_check_pressed(input_key))
    { 
        
        if (global.quests[char_index].quest_done)
        {
            create_dialogue(dialog[3]);
        } 

        else if (global.quests[char_index].quest_started == true && has_interacted != 0) 
        {
            create_dialogue(dialog[2]);
            global.happiness += 10;
            global.quests[char_index].quest_done = true;
            sprite_index = spr_daisy;
            //draw_happy(obj_player.x, obj_player.y);
            alarm[0] = -1;
        } 
        else { 
            audio_play_sound(snd_snorf04_low_slow, 1, false);
            create_dialogue(dialog[has_interacted]);
            has_interacted = 1;
        }
    }
}
else 
{
    can_talk = false;
}

// reset 
if (alarm[0] == 0 && global.quests[char_index].quest_done == false) alarm[0] = 5*60;