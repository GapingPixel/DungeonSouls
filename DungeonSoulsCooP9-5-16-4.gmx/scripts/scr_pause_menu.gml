///scr_menu_options(pause)
gml_pragma("forceinline");
//Controls
scr_menu_input();
draw_set_halign(fa_center);
draw_set_font(fntPixelLife);
//draw_set_font(font0);
draw_set_colour(c_ltgray);
//Enter Sound
if ((enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]) && alarm[1]<=0) { 
   //audio_play_sound(snd_accept,0,false);
   Play_Sound(snd_choose,1,.5,0,5000,true,false);
   
}
//Clamp option
option = clamp(option,0,maxOption);
//draw_text(20,50, string(argument0));
//Options
//scr_menu_helper();
///scr_menu_helper
//Wait for input and change option

if (alarm[0] <= 0) {
   if (up_key[GAMEPAD_1] || up_key[GAMEPAD_2] || up_key[KEYBOARD]) {
       alarm[0] = room_speed*.2;
       option--;
       Play_Sound(snd_choose,1,.5,0,5000,true,false);
       scale = 1;
   } else if (down_key[GAMEPAD_1] || down_key[GAMEPAD_2] || down_key[KEYBOARD]) {
       alarm[0] = room_speed*.2;
       option++;
       Play_Sound(snd_choose,1,.5,0,5000,true,false);
       scale = 1;
    }
}

switch (menu_index) {
    
   case MENU_MAIN:
   //scr_menu_main(argument0);
   ///scr_menu_main

   ///Logic
   option = clamp(option,0,maxOption);
    //Text
    if (option !=0) {
        draw_text(xx,yy[0],text[0]);
    }
              
    if (option !=1) {
        draw_text(xx,yy[1],text[1]);
    }
              
    if (option !=2) {
        draw_text(xx,yy[2],text[2]);
    }
              
    if (option !=3) {
        draw_text(xx,yy[3],text[3]);
    }
              
    if (option !=4) {
        draw_text(xx,yy[4],text[4]);
    }

    maxOption = 4;
          
   //Select
    scale = clamp(scale,1,1.2);
    if (scale == 1.2) {
        up = false;
    } else if (scale == 1) {
         up = true;
    }
        
if (option = 1 && global.pad[GAMEPAD_1] == noone) {
    up = up;
} else {
    if (up) {
        scale +=0.01;
    } else {
        scale -=0.01;
    }
}
       
if ((!up_key[GAMEPAD_1] || !up_key[GAMEPAD_2] || !up_key[KEYBOARD] ||  !down_key[GAMEPAD_1] || !down_key[GAMEPAD_2] || !down_key[KEYBOARD]) && alarm[0] <= room_speed*.1) {
       draw_text_transformed_colour(xx+1,yy[option],text[option],scale,scale,0,make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),1);
} else {
    draw_text_colour(xx,yy[option],text[option],make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),1);
}
       
     
switch (option) {
          
    case 0://Single Player - Resume Game
    if ((enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]) && alarm[1]<=0) { 
        //Resume Game
        Save_Settings();//Keys save
        //surface_free(surf_pause); 
        draw_enable_alphablend(true);   
        /*with (obj_camera) {
            instance_destroy();
        }*/
        instance_activate_all();
        instance_destroy();
    }
    break;   
    
    case 1://Options
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]){
        menu_index = MENU_SETTINGS;
        option = 0; //Restart option
    }
    break;
          
    case 2://Quick Restart
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]){ 
        audio_stop_all();        
        Quick_Restart();
    }
    break;
          
    case 3://Main Menu
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]){
        scr_save_game();
        global.dungeon = 0;
        global.boss_rm = 0;
        global.loop=1;
        global.dungeon_name = ENVIRO4;  
        Change_Level("Normal"); 
        if (audio_is_playing(snd_skeleton_king)) then audio_stop_sound(snd_skeleton_king);
            instance_activate_all();
            instance_create(x,y,obj_FadeOut);
            //game_restart();
            room_goto(Menu);
            with (obj_Menu) {
                part_system_destroy(part_sys);
                part_type_destroy(part);
                part_emitter_destroy(part_sys,emitter);
            }
            game_restart();
            //draw_clear_alpha(c_white,0)
            instance_destroy();
    }
    break;
                
    case 4: //Exit to Desktop
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]) {
        room_persistent = false;
        game_end();
    }
    break;
           
}
break;

 case MENU_SETTINGS:
 scr_menu_settings();
 break;

}
