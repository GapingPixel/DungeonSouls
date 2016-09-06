///Play_Sound_Normal(index,pitch,gainf,gaint,time,stop,loop)
gml_pragma("forceinline");
index = argument[0];
pitch = argument[1];
gainf = argument[2];
gaint = argument[3];
time = argument[4];
stop = argument[5];
loop = argument[6];

if stop then audio_stop_sound(index);

audio_master_gain((global.sfx_vol*0.01)*1);
audio_play_sound(index,10,loop);
audio_sound_pitch(index,pitch);
audio_sound_gain(index,gainf,0);
audio_sound_gain(index,gaint,time)
