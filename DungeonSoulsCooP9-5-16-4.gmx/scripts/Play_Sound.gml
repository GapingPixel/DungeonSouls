///Play_Sound(index,pitch,gainf,gaint,time,stop,loop)
gml_pragma("forceinline");
index = argument[0];
pitch = argument[1];
gainf = argument[2];
gaint = argument[3];
time = argument[4];
stop = argument[5];
loop = argument[6];

if stop then if audio_is_playing(index) audio_stop_sound(index);

audio_master_gain((global.sfx_vol*0.01)*1);
audio_play_sound(index,10,loop);
audio_sound_pitch(index,pitch);
audio_sound_gain(index,gainf,0);
audio_sound_gain(index,gaint,time)
/*if room == Char_Select or room == Menu
    audio_listener_position(320/2,240/2,0);
em = audio_emitter_create();
audio_master_gain((global.sfx_vol/100)*1);
audio_emitter_gain(em,gainf);
audio_play_sound_at(index,x,y,0,100,300,1,loop,1);
//audio_play_sound(index,10,loop);
audio_sound_pitch(index,pitch);
audio_sound_gain(index,gainf,0);
audio_sound_gain(index,gaint,time)
audio_emitter_free(em);
