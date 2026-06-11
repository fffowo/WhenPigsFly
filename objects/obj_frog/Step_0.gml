if (instance_exists(obj_dialogue)) exit;

    
if (instance_exists(obj_player) && distance_to_object(obj_player) < 12)
{

    
    if (counter_snd == 0)
    {
        audio_play_sound(snd_frog2, 1, false);
        counter_snd = 6*60;
    }
    else if (counter_snd > 0) counter_snd--;
    
}