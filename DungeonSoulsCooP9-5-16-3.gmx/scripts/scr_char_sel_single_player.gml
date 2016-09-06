scr_menu_input();
if ( instance_exists(obj_Char_Select_Soul) ) then exit;
   
   switch ( global.coop ) {
   
   case false:
   
   ///GAMEPAD
   if (alarm[1] <= 0) { 
      if ( left_key[GAMEPAD_1] && choice > -1 ) {
         Play_Sound(snd_choose,0.8+(0.1*choice),0.4,0,2000,true,false);                
         choice -= 1;
         //if choice != -1 then Play_Sound(voice[choice],1,1,0,10000,true,false);
         arry[0] = 4;
         alarm[1] = room_speed*.3; 
      }
   
   
      if  ( right_key[GAMEPAD_1] && choice < maxchar ) {
          Play_Sound(snd_choose,0.8+(0.1*choice),0.4,0,2000,true,false);                
          choice += 1;
          //if choice != -1 then Play_Sound(voice[choice],1,1,0,10000,true,false);
          arry[1] = 4;
          alarm[1] = room_speed*.3; 
      }
   
   }
   
   if ( gamepad_button_check_pressed(global.pad[GAMEPAD_1],ds_map_find_value(global.ckeys,'pick')) && !passive ) {
      Play_Sound(snd_choose,1,.5,0,5000,true,false);
      if ( choice == -1 ) {
         randomize();
         global.choice = Random(0,maxchar);
         while (unlocked[global.choice] == false) {
               global.choice = Random(0,maxchar); 
         }                   
         global.choiceb = 0;                    
      } else {
        global.choice = choice;    
        global.choiceb = 1;
      }
      if ( unlocked[global.choice] == true ) {//if character locked
         Save_Stats();
         instance_create(x,y,obj_Char_Select_FO);
         //global.total_coins = 0;
         var pos = 0;
         repeat( 8 ) {
                 instance_create(320/2+lengthdir_x(256,pos),240/2+lengthdir_y(256,pos),obj_Char_Select_Soul);
                 pos += 45;
         }
         arry[2] = 4; 
         if ( audio_is_playing(snd_title_screen) )
            audio_sound_gain(snd_title_screen,0,5000);                       
         }
   }
            
   ///KEYBOARD
   if (mouse_y >view_hview/2+40 && mouse_y <view_hview/2+56 && passive == false) {
      if ( mouse_x >view_wview/2-48-8 && mouse_x <view_wview/2-48+8 ) {
         if ( mouse_check_button_pressed(mb_left) && choice > -1 ) {
            Play_Sound(snd_choose,0.8+(0.1*choice),0.4,0,2000,true,false);                
            choice -= 1;
            //if choice != -1 then Play_Sound(voice[choice],1,1,0,10000,true,false);
            arry[0] = 4;
         }
      }
            
      if ( mouse_x >view_wview/2+48-8 && mouse_x <view_wview/2+48+8 ) {
         if ( mouse_check_button_pressed(mb_left) && choice < maxchar ) {
              Play_Sound(snd_choose,0.8+(0.1*choice),0.4,0,2000,true,false);                
              choice += 1;
              arry[1] = 4;
         }
      } 
            
      if ( mouse_x >view_wview/2-sprite_get_width(spr_Char_Select_Button)/2 && mouse_x <view_wview/2+sprite_get_width(spr_Char_Select_Button)/2 ) {
         if (mouse_check_button_pressed(mb_left)) {
            Play_Sound(snd_choose,1,.5,0,5000,true,false);
            if (choice == -1) {
               randomize();
               global.choice = Random(0,maxchar);
               while (unlocked[global.choice] == false) {
                     global.choice = Random(0,maxchar);        
               }            
               global.choiceb = 0;                    
            } else {
              global.choice = choice;    
              global.choiceb = 1;
            }
            
            if ( unlocked[global.choice] == true ) {  //if character locked
               Save_Stats();
               instance_create(x,y,obj_Char_Select_FO);
               //global.total_coins = 0;
               var pos = 0;
               repeat(8) {
                         instance_create(320/2+lengthdir_x(256,pos),240/2+lengthdir_y(256,pos),obj_Char_Select_Soul);
                         pos += 45;
               }
               arry[2] = 4; 
               if ( audio_is_playing(snd_title_screen) ) {
                  audio_sound_gain(snd_title_screen,0,5000);  
               }                     
            }
         }
      }            
   }
        
   ///KEYBOARD
   if (!passive) {
      if ((keyboard_check_pressed(ds_map_find_value(global.keys,'right')))  && choice < maxchar) {
         Play_Sound(snd_choose,0.8+(0.1*choice),0.4,0,2000,true,false);                
         choice += 1;
         //if choice != -1 then Play_Sound(voice[choice],1,1,0,10000,true,false);
         arry[1] = 4;
      }
      
      if ( (keyboard_check_pressed(ds_map_find_value(global.keys,'left'))) && choice > -1 ) {
         Play_Sound(snd_choose,0.8+(0.1*choice),0.4,0,2000,true,false);                
         choice -= 1;
         //if choice != -1 then Play_Sound(voice[choice],1,1,0,10000,true,false);
         arry[0] = 4;
      }
      
      if (keyboard_check_pressed(ds_map_find_value(global.keys,'pick'))) && choice > -1 {
         Play_Sound(snd_choose,1,.5,0,5000,true,false);
         if (choice == -1) {
            randomize();
            global.choice = Random(0,maxchar);
            while (unlocked[global.choice] == false) {
                  global.choice = Random(0,maxchar);   
            }                 
            global.choiceb = 0;                    
         } else {
           global.choice = choice;    
           global.choiceb = 1;
         }
         
         if ( unlocked[global.choice] == true ) {
            Save_Stats();
            instance_create(x,y,obj_Char_Select_FO);
            //global.total_coins = 0;
            var pos = 0;
            repeat(8) {
                      instance_create(320/2+lengthdir_x(256,pos),240/2+lengthdir_y(256,pos),obj_Char_Select_Soul);
                      pos += 45;
            }
            arry[2] = 4; 
            if (audio_is_playing(snd_title_screen) ) {
               audio_sound_gain(snd_title_screen,0,5000);
            }                       
         }
      }
   }
    
    ///GAMEPAD
    if (global.pad[GAMEPAD_1]!=-1) {
            if ( (gamepad_button_check_pressed(global.pad[GAMEPAD_1],gp_face2)) && passive == false ) {
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
                instance_create(x,y,obj_FadeOut);
                room_goto_previous();
            }
        }
    
    if ((keyboard_check_pressed(vk_escape)) && passive == false ) {
        Play_Sound(snd_choose,1,.5,0,5000,true,false);
        instance_create(x,y,obj_FadeOut);
        room_goto_previous();
    }
    
    var pad;
    pad = global.pad[GAMEPAD_1];
    if (pad!=-1) {
       var difficulty = difficulty_to_index(global.difficulty);
       if (gamepad_button_check_pressed(pad,gp_shoulderl)) {
          difficulty-=1;
       } else if (gamepad_button_check_pressed(pad,gp_shoulderr)) {
                difficulty+=1;
       }
       if (difficulty>3) {
          difficulty-=4;
       }
       
       if (difficulty<0) {
          difficulty+=4;
       }
       global.difficulty = index_to_difficulty(difficulty);
    }
    
    ///KEYBOARD
    if ( mouse_check_button_pressed(mb_left) && passive == false ) {
        if (mouse_x >view_wview/2-96-8 && mouse_x <view_wview/2-96+8) && (mouse_y >view_hview-32-8 && mouse_y <view_hview-32+8)
            global.difficulty = "Easy";
        if (mouse_x >view_wview/2-72-8 && mouse_x <view_wview/2-72+8) && (mouse_y >view_hview-32-8 && mouse_y <view_hview-32+8) && global.normal 
            global.difficulty = "Normal";
        if (mouse_x >view_wview/2-48-8 && mouse_x <view_wview/2-48+8) && (mouse_y >view_hview-32-8 && mouse_y <view_hview-32+8) && global.nightmare
            global.difficulty = "Nightmare";
        if (mouse_x >view_wview/2-24-8 && mouse_x <view_wview/2-24+8) && (mouse_y >view_hview-32-8 && mouse_y <view_hview-32+8) && global.impossible
            global.difficulty = "Impossible";             
    }  
    
    
     ///GAMEPAD
     var dir, hs, vs, spd;
     spd = 8;
        
     //  VERSION 1 SCHEMATICS.
     dir = point_direction(0, 0, gamepad_axis_value(global.pad[GAMEPAD_1],gp_axisrh), gamepad_axis_value(global.pad[GAMEPAD_1],gp_axisrv)) //in 3rd zero, should be joystick_data[0,6]
     hs = lengthdir_x(abs(gamepad_axis_value(global.pad[GAMEPAD_1],gp_axisrh)),dir);
     vs = lengthdir_y(abs(gamepad_axis_value(global.pad[GAMEPAD_1],gp_axisrv)), dir);
     var deadZone = gamepad_get_axis_deadzone(global.pad[GAMEPAD_1]);
     if ( hs > deadZone || vs > deadZone || hs<deadZone || vs<deadZone ) {
        window_mouse_set(window_mouse_get_x() + hs*spd, window_mouse_get_y() + vs*spd);
     }
    
     //RANK UP
     
   
    //PASSIVES
    var pad;
    pad =global.pad[GAMEPAD_1];
    if (pad!=-1) {
       if (!passive) {
          if (gamepad_button_check_pressed(pad,gp_shoulderrb)) {
             passive = true;
             pas_alpha = 1;
          }
       } else {
       if (gamepad_button_check_pressed(pad,gp_shoulderrb)) {
          passive = false
          pas_alpha = 0;
          Save_Stats();
          }
       }
    }
   
   ////KEYBOARD   
   if (mouse_x>view_wview/2+56 && mouse_x <view_wview/2+56+48) && (mouse_y >view_hview/2+14 && mouse_y <view_hview/2+14+12) {
            if mouse_check_button_pressed(mb_left) {
                if ( passive == false ) {
                    passive = true
                    pas_alpha = 1
                }       
            }
   }
   //EXIT PASSIVES 186,105
   if ( (mouse_x > 186 && mouse_x < 186+7) && (mouse_y > 105 && mouse_y < 105+7) ) {
      if ( mouse_check_button_pressed(mb_left) ) {
         if ( passive == true ) {           
            passive = false;
            pas_alpha = 0;
            Save_Stats();
         }
      }
   }
   break;

   //////////////
   ///Co-oP
   /////////////   
   /////////////  
   case true:
   
   switch (global.coop_player_2) {
   
   case false:
     
   ///KEYBOARD
   if (mouse_y > view_hview/2+40 && mouse_y <view_hview/2+56 && passive == false) {
      if ( mouse_x >view_wview/2-48-8 && mouse_x <view_wview/2-48+8 ) {
         if ( mouse_check_button_pressed(mb_left) && choice > -1 ) {
            Play_Sound(snd_choose,0.8+(0.1*choice),0.4,0,2000,true,false);                
            choice -= 1;
            //if choice != -1 then Play_Sound(voice[choice],1,1,0,10000,true,false);
            arry[0] = 4;
         }
      }
            
      if ( mouse_x >view_wview/2+48-8 && mouse_x <view_wview/2+48+8 ) {
         if ( mouse_check_button_pressed(mb_left) && choice < maxchar ) {
              Play_Sound(snd_choose,0.8+(0.1*choice),0.4,0,2000,true,false);                
              choice += 1;
              arry[1] = 4;
         }
      } 
            
      if ( mouse_x >view_wview/2-sprite_get_width(spr_Char_Select_Button)/2 && mouse_x <view_wview/2+sprite_get_width(spr_Char_Select_Button)/2 ) {
         if (mouse_check_button_pressed(mb_left)) {
            Play_Sound(snd_choose,1,.5,0,5000,true,false);
            if (choice == -1) {
               randomize();
               global.choice = Random(0,maxchar);
               while (unlocked[global.choice] == false) {
                     global.choice = Random(0,maxchar);        
               }            
               global.choiceb = 0;                    
            } else {
              global.choice = choice;    
              global.choiceb = 1;
            }
            
            if ( unlocked[global.choice] == true ) {  //if character locked
               Save_Stats();
               //instance_create(x,y,obj_Char_Select_FO);
               room_goto(char_Select_CooP);
               //global.total_coins = 0;
               var pos = 0;
               global.coop_player_2 = true;
               /*repeat(8) {
                         instance_create(320/2+lengthdir_x(256,pos),240/2+lengthdir_y(256,pos),obj_Char_Select_Soul);
                         pos += 45;
               }*/
               arry[2] = 4; 
               if ( audio_is_playing(snd_title_screen) ) {
                  audio_sound_gain(snd_title_screen,0,5000);  
               }                     
            }
         }
      }            
   }
        
   ///KEYBOARD
   if (!passive) {
      if ((keyboard_check_pressed(ds_map_find_value(global.keys,'right')))  && choice < maxchar) {
         Play_Sound(snd_choose,0.8+(0.1*choice),0.4,0,2000,true,false);                
         choice += 1;
         //if choice != -1 then Play_Sound(voice[choice],1,1,0,10000,true,false);
         arry[1] = 4;
      }
      
      if ( (keyboard_check_pressed(ds_map_find_value(global.keys,'left'))) && choice > -1 ) {
         Play_Sound(snd_choose,0.8+(0.1*choice),0.4,0,2000,true,false);                
         choice -= 1;
         //if choice != -1 then Play_Sound(voice[choice],1,1,0,10000,true,false);
         arry[0] = 4;
      }
      
      if (keyboard_check_pressed(ds_map_find_value(global.keys,'pick'))) && choice > -1 {
         Play_Sound(snd_choose,1,.5,0,5000,true,false);
         if (choice == -1) {
            randomize();
            global.choice = Random(0,maxchar);
            while (unlocked[global.choice] == false) {
                  global.choice = Random(0,maxchar);   
            }                 
            global.choiceb = 0;                    
         } else {
           global.choice = choice;    
           global.choiceb = 1;
         }
         
         if ( unlocked[global.choice] == true ) {
            Save_Stats();
            room_goto(char_Select_CooP);
            //instance_create(x,y,obj_Char_Select_FO);
            //global.total_coins = 0;
            var pos = 0;
            global.coop_player_2 = true;
            /*repeat(8) {
                      instance_create(320/2+lengthdir_x(256,pos),240/2+lengthdir_y(256,pos),obj_Char_Select_Soul);
                      pos += 45;
            }*/
            arry[2] = 4; 
            if (audio_is_playing(snd_title_screen) ) {
               audio_sound_gain(snd_title_screen,0,5000);
            }                       
         }
      }
   }
    
   
    ///KEYBOARD
    if ( mouse_check_button_pressed(mb_left) && passive == false ) {
        if (mouse_x >view_wview/2-96-8 && mouse_x <view_wview/2-96+8) && (mouse_y >view_hview-32-8 && mouse_y <view_hview-32+8)
            global.difficulty = "Easy";
        if (mouse_x >view_wview/2-72-8 && mouse_x <view_wview/2-72+8) && (mouse_y >view_hview-32-8 && mouse_y <view_hview-32+8) && global.normal 
            global.difficulty = "Normal";
        if (mouse_x >view_wview/2-48-8 && mouse_x <view_wview/2-48+8) && (mouse_y >view_hview-32-8 && mouse_y <view_hview-32+8) && global.nightmare
            global.difficulty = "Nightmare";
        if (mouse_x >view_wview/2-24-8 && mouse_x <view_wview/2-24+8) && (mouse_y >view_hview-32-8 && mouse_y <view_hview-32+8) && global.impossible
            global.difficulty = "Impossible";             
    }  
    
    
   ////KEYBOARD   
   if (mouse_x>view_wview/2+56 && mouse_x <view_wview/2+56+48) && (mouse_y >view_hview/2+14 && mouse_y <view_hview/2+14+12) {
            if mouse_check_button_pressed(mb_left) {
                if ( passive == false ) {
                    passive = true
                    pas_alpha = 1
                }       
            }
   }
   //EXIT PASSIVES 186,105
   if ( (mouse_x > 186 && mouse_x < 186+7) && (mouse_y > 105 && mouse_y < 105+7) ) {
      if ( mouse_check_button_pressed(mb_left) ) {
         if ( passive == true ) {           
            passive = false;
            pas_alpha = 0;
            Save_Stats();
         }
      }
   }
 break;
          
 
 case true:
  ///GAMEPAD
   if (alarm[1] <= 0) { 
      if ( left_key[GAMEPAD_1] && choice > -1 ) {
         Play_Sound(snd_choose,0.8+(0.1*choice),0.4,0,2000,true,false);                
         choice -= 1;
         //if choice != -1 then Play_Sound(voice[choice],1,1,0,10000,true,false);
         arry[0] = 4;
         alarm[1] = room_speed*.3; 
      }
   
   
      if  ( right_key[GAMEPAD_1] && choice < maxchar ) {
          Play_Sound(snd_choose,0.8+(0.1*choice),0.4,0,2000,true,false);                
          choice += 1;
          //if choice != -1 then Play_Sound(voice[choice],1,1,0,10000,true,false);
          arry[1] = 4;
          alarm[1] = room_speed*.3; 
      }
   
   }
   
   if ( gamepad_button_check_pressed(global.pad[GAMEPAD_1],ds_map_find_value(global.ckeys,'pick')) && !passive ) {
      Play_Sound(snd_choose,1,.5,0,5000,true,false);
      if ( choice == -1 ) {
         randomize();
         global.choice2 = Random(0,maxchar);
         while (unlocked[global.choice] == false) {
               global.choice2 = Random(0,maxchar); 
         }                   
         global.choiceb = 0;                    
      } else {
        global.choice2 = choice;    
        global.choiceb = 1;
      }
      if ( unlocked[global.choice] == true ) {//if character locked
         Save_Stats();
         instance_create(x,y,obj_Char_Select_FO);
         //global.total_coins = 0;
         var pos = 0;
         repeat( 8 ) {
                 instance_create(320/2+lengthdir_x(256,pos),240/2+lengthdir_y(256,pos),obj_Char_Select_Soul);
                 pos += 45;
         }
         arry[2] = 4; 
         if ( audio_is_playing(snd_title_screen) )
            audio_sound_gain(snd_title_screen,0,5000);                       
         }
   }
            
   ///GAMEPAD
   if ( (gamepad_button_check_pressed(global.pad[GAMEPAD_1],gp_face2)) && passive == false ) {
      Play_Sound(snd_choose,1,.5,0,5000,true,false);
      instance_create(x,y,obj_FadeOut);
      //room_goto_previous();
      room_goto(Menu);
   }
        
    var pad;
    pad = global.pad[GAMEPAD_1];
    if (pad!=-1) {
       var difficulty = difficulty_to_index(global.difficulty);
       if (gamepad_button_check_pressed(pad,gp_shoulderl)) {
          difficulty-=1;
       } else if (gamepad_button_check_pressed(pad,gp_shoulderr)) {
                difficulty+=1;
       }
       if (difficulty>3) {
          difficulty-=4;
       }
       
       if (difficulty<0) {
          difficulty+=4;
       }
       global.difficulty = index_to_difficulty(difficulty);
    }
    
     ///GAMEPAD
     var dir, hs, vs, spd;
     spd = 8
        
     //  VERSION 1 SCHEMATICS.
     dir = point_direction(0, 0, gamepad_axis_value(global.pad[GAMEPAD_1],gp_axisrh), gamepad_axis_value(global.pad[GAMEPAD_1],gp_axisrv)) //in 3rd zero, should be joystick_data[0,6]
     hs = lengthdir_x(abs(gamepad_axis_value(global.pad[GAMEPAD_1],gp_axisrh)),dir);
     vs = lengthdir_y(abs(gamepad_axis_value(global.pad[GAMEPAD_1],gp_axisrv)), dir);
     var deadZone = gamepad_get_axis_deadzone(global.pad[GAMEPAD_1]);
     if ( hs > deadZone || vs > deadZone || hs < deadZone || vs < deadZone ) {
        window_mouse_set(window_mouse_get_x() + hs*spd, window_mouse_get_y() + vs*spd);
     }
    
     //RANK UP
     
   
    //PASSIVES
    var pad;
    pad =global.pad[GAMEPAD_1];
    if (pad!=-1) {
       if (!passive) {
          if (gamepad_button_check_pressed(pad,gp_shoulderrb)) {
             passive = true;
             pas_alpha = 1;
          }
       } else {
       if (gamepad_button_check_pressed(pad,gp_shoulderrb)) {
          passive = false
          pas_alpha = 0;
          Save_Stats();
          }
       }
    }
   break;
   
}
}
 
