///cutscene_add_message(String message,real duration,int sound_index)
gml_pragma("forceinline");
/*
    Adds a message to the cutscene's message queue.
    For no sound to play, pass -1.
    In case it's an infinite-duration message, pass an argument lower or equal to -16
*/
cutscene_message[cutscene_mindex]=argument0;
cutscene_duration[cutscene_mindex]=argument1;
cutscene_sound[cutscene_mindex++]=argument2;
