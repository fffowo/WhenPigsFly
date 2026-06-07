
if (room == Room_house || room == Room_house_inside) {

    song = sng_woods // axtoncrolley 

}
else if (room = Room_title || room = Room_credits)
{
    song = sng_cute; // ISAo
}
else 
{
    song = song_applecider; // Zane Little Music
}


if (current_song != song)
{
    audio_stop_all();
    audio_play_sound(song, 4, true);
    current_song = song;
}
    



