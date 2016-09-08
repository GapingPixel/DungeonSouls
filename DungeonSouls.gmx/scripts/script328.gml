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
