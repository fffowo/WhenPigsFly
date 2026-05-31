
if (room == Room_house || room == Room_house_inside) {

    song = sng_woods // axtoncrolley 
    audio_stop_all();
    audio_play_sound(song, 4, true);
}
else 
{
    song = song_applecider; // Zane Little Music
    audio_stop_all();
    audio_play_sound(song, 4, true);
}
    