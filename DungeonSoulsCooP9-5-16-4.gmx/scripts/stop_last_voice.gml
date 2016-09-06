///stop_last_voice();
/*
    Stops the last voice played.
*/
if (last_voice!=-1)
{
    if (audio_is_playing(last_voice))
    {
        audio_stop_sound(last_voice);
    }
}
