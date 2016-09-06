///scr_menu_helper
//Wait for input and change option
switch (menu_index) {

case MENU_NEW_GAME:
//Selection Input
if (character_selection[0]) {
//Char selection 1
if (alarm[0] <= 0) {
   if (up_key[global.pad[0]]) {
       alarm[0] = room_speed*.2;
       char_option[0]--;
       //audio_play_sound(snd_selection,1,false);
       //Play_Sound(snd_ ,1,.5,0,5000,true,false);
   } else if (down_key[global.pad[0]]) {
       alarm[0] = room_speed*.2;
       char_option[0]++;
       //audio_play_sound(snd_selection,1,false);
       //Play_Sound(snd_selection,1,.5,0,5000,true,false);
    }
}
}
//Char selection 2
if (character_selection[1]) {
if (alarm[3] <= 0) {
   if (up_key[global.input[2]]) {
       alarm[3] = room_speed*.2;
       char_option[1]--;
       //audio_play_sound(snd_selection,1,false);
   } else if (down_key[global.input[2]]) {
       alarm[3] = room_speed*.2;
       char_option[1]++;
       //audio_play_sound(snd_selection,1,false);
    }
}
}
break;

case MENU_CREDITS://No Sound
break;

default:
if (alarm[0] <= 0) {
   if (up_key[GAMEPAD_1] || up_key[GAMEPAD_2] || up_key[KEYBOARD]) {
       alarm[0] = room_speed*.2;
       option--;
       //audio_play_sound(snd_selection,1,false);
       scale = 1;
   } else if (down_key[GAMEPAD_1] || down_key[GAMEPAD_2] || down_key[KEYBOARD]) {
       alarm[0] = room_speed*.2;
       option++;
       //audio_play_sound(snd_selection,1,false);
       scale = 1;
    }
}
break;
}
