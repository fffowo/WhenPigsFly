with (all)
{
    depth = -bbox_bottom;
}

if (!instance_exists(obj_dialogue)) {
    if (keyboard_check_pressed(vk_space))
{
    
    var _r = round(random_range(0, 3));
    soundfile = snorfs[_r];
    audio_play_sound(soundfile, 1, false);
    if (counter_snorfs == 0)
    {
        global.happiness++;
        counter_snorfs = 5;
    } else 
    {
        counter_snorfs--;
    }
}
}

