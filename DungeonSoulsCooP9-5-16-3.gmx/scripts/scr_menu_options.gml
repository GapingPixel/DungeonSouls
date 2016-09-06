#define scr_menu_options
///scr_menu_options()
gml_pragma("forceinline");
//Controls
scr_menu_input();
draw_set_halign(fa_center);
draw_set_font(fntPixelLife);
//draw_set_font(font0);
draw_set_colour(c_ltgray);
//Enter Sound
if ( ( enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD] ) && alarm[1]<=0 ) { 
   //audio_play_sound(snd_accept,0,false);
   Play_Sound(snd_choose,1,.5,0,5000,true,false);
}
//Clamp option
option = clamp(option,0,maxOption);
///scr_menu_helper
//Wait for input and change option
switch (menu_index) {

    case MENU_FORGE://No Sound
    break;
    
    case MENU_CREDITS://No Sound
    break;

    default:
    if ( alarm[0] <= 0 ) {
    if ( up_key[GAMEPAD_1] || up_key[GAMEPAD_2] || up_key[KEYBOARD] ) {
       alarm[0] = room_speed*.2;
       option--;
       Play_Sound(snd_choose,1,.5,0,5000,true,false);
       scale = 1;
   } else if ( down_key[GAMEPAD_1] || down_key[GAMEPAD_2] || down_key[KEYBOARD] ) {
       alarm[0] = room_speed*.2;
       option++;
       Play_Sound(snd_choose,1,.5,0,5000,true,false);
       scale = 1;
    }
}
break;
}


switch (menu_index) {
    
    case MENU_MAIN:
    scr_menu_background_fx();//Menu Background Effect
    ///Logic
    option = clamp(option,0,maxOption);
    draw_set_font(fntTitle);
    draw_set_colour(make_colour_rgb(237,45,80));
    //draw_text(160,30,"Best title ever");
    draw_set_font(fntPixelLife);
    draw_set_colour(c_ltgray);
    xx = 160;
    //Text
    if (option !=0) then draw_text(xx,yy[0],text[0]);//Single Player
    if (option !=1) then draw_text(xx,yy[1],text[1]);//Coop
    if (option !=2) then draw_text(xx,yy[2],text[2]);//Tutorial
    if (option !=3) then draw_text(xx,yy[3],text[3]);//Arcane Forge
    if (option !=4) then draw_text(xx,yy[4],text[4]);//Options
    if (option !=5) then draw_text(xx,yy[5],text[5]);//Credits
    if (option !=6) then draw_text(xx,yy[6],text[6]);//Quit
    maxOption = 6;

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
    if (up) then scale +=0.01; else {scale -=0.01;}
    }
       
    if ((!up_key[GAMEPAD_1] || !up_key[GAMEPAD_2] || !up_key[KEYBOARD] ||  !down_key[GAMEPAD_1] || !down_key[GAMEPAD_2] || !down_key[KEYBOARD]) && alarm[0] <= room_speed*.1) {
        draw_text_transformed_colour(xx+1,yy[option],text[option],scale,scale,0,make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),1);
    } else {
        draw_text_colour(xx,yy[option],text[option],make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),1);
    }
    
    /////////////////////
    ///Main Menu Options   
    switch (option) {
          
    case 0://Single Player 
    if ((enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]) && alarm[1]<=0) { 
        global.coop = false;
        room_goto_next();
    }
    break;   
    
    case 1://Coop
    if (global.pad[GAMEPAD_1] != noone) {
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]) {
        global.coop = true;
        room_goto_next();
        }
    }
    break;
          
    case 2://Tutorial
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]){
        if ( !instance_exists(obj_FadeOut) ) then instance_create(x,y,obj_FadeOut);
            global.coop = false;
            global.tutorial = true;
            global.tutorial_lvl = 0;
            room_goto_next();
    }
    break;
    
    case 3://Arcane Forge
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]) {
        option = 0;
        init_hero_weapons();
        //instance_create(0,0,obj_Forge_Effect);
        menu_index = MENU_FORGE;
        
    }
    break;
             
    case 4: //Options
    if ( enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD] ) {
        menu_index = MENU_OPTIONS;
        option = 0; //Restart option
        global.coop = false;
    }
    break;
              
    case 5: //Credits
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]) {
        menu_index = MENU_CREDITS;
        global.coop = false;
    }
    break;
          
    case 6://Exit
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]) {
        //room_persistent = false;
        //global.coop = false;
        game_end();
    }
    break;
    }
       
break;           
  
    case MENU_FORGE:
    draw_set_font(font0);
    arcane_forge_update_neophyte();
    scr_menu_forge();
    break;
   
    case MENU_CREDITS:
    scr_menu_credits();
    break;
       
    case MENU_OPTIONS:
    scr_menu_options_adv();
    //scr_menu_settings();
    break;
    
    case MENU_CONTROLS:
    break;
    
    case MENU_GAMEPLAY:
    break;
    
    case MENU_STATS:
    break;
    
    case MENU_SETTINGS:
    scr_menu_settings();
    break;
}
Save_Settings();//Dbug



#define scr_menu_credits
///scr_menu_settings
if (back[GAMEPAD_1] || back[GAMEPAD_2] || back[KEYBOARD]) {
    menu_index = MENU_MAIN;
    option = 5; //audio_play_sound(snd_accept,1,0);
}

//Text
draw_set_font(font0);
var baseX = 165;
var baseY = 20;//50
var menu_yy = 10;//20
var halfMYY = 50;
draw_set_alpha(0.4);
draw_rectangle(baseX-32,baseY+240-4+(menu_yy*8)+halfMYY-credits_scroll,baseX+32,baseY+240+3+(menu_yy*8)+halfMYY-credits_scroll,false)
draw_set_alpha(1);
draw_set_color(c_white);
draw_text(baseX,baseY+32+halfMYY-credits_scroll,"DUNGEON SOULS");
draw_text(baseX,baseY+48+halfMYY-credits_scroll,"Diogo Braga"); //Mike Renevo
draw_text(baseX,baseY+64+halfMYY-credits_scroll,"April Poland");
draw_set_color(c_gray);        
draw_text(baseX,baseY+56+halfMYY-credits_scroll,"Lead Developer");//Developer
draw_text(baseX,baseY+72+halfMYY-credits_scroll,"Executive Producer");
draw_set_color(c_white);    
draw_set_halign(fa_right)
draw_text(baseX-8,baseY+88+halfMYY-credits_scroll,"Carlos Vila");    
draw_text(baseX-8,baseY+96+halfMYY-credits_scroll,"Unfamiliar Identity");
draw_text(baseX-8,baseY+104+halfMYY-credits_scroll,"Joe O'Quinn");
draw_text(baseX-8,baseY+112+halfMYY-credits_scroll,"Christopher Van Ejik");  
draw_text(baseX-8,baseY+120+halfMYY-credits_scroll,"Digital Sun Enterprises");  
draw_text(baseX-8,baseY+136+halfMYY-credits_scroll,"Mike Renevo"); //Diogo Braga
draw_text(baseX-8,baseY+144+halfMYY-credits_scroll,"Igor Grincu"); 
draw_text(baseX-8,baseY+152+halfMYY-credits_scroll,"Mike Renevo"); //Piotrek Antoniak
draw_text(baseX-8,baseY+160+halfMYY-credits_scroll,"Paul Benedict Galvez");
draw_text(baseX-8,baseY+168+halfMYY-credits_scroll,"Louise Palomar");
draw_text(baseX-8,baseY+176+halfMYY-credits_scroll,"Piotrek Antoniak");
draw_text(baseX-8,baseY+184+halfMYY-credits_scroll,"Yannik Langener");
draw_text(baseX-8,baseY+192+halfMYY-credits_scroll,"Diogo Braga");
draw_text(baseX-8,baseY+208+halfMYY-credits_scroll,"Ovais Malik");
draw_text(baseX-8,baseY+232+halfMYY-credits_scroll,"Black Shell Media");
draw_set_halign(fa_left)    
draw_set_color(c_gray);
draw_text(baseX+8,baseY+88+halfMYY-credits_scroll,"Programmer, Game Designer");    
draw_text(baseX+8,baseY+96+halfMYY-credits_scroll,"Music Composers");
draw_text(baseX+8,baseY+136+halfMYY-credits_scroll,"Developer");
draw_text(baseX+8,baseY+144+halfMYY-credits_scroll,"Pixel Artist");
draw_text(baseX+8,baseY+152+halfMYY-credits_scroll,"Pixel Artist");
draw_text(baseX+8,baseY+160+halfMYY-credits_scroll,"Graphic Artist");
draw_text(baseX+8,baseY+168+halfMYY-credits_scroll,"Promotional Art");
draw_text(baseX+8,baseY+176+halfMYY-credits_scroll,"Digital Artist");
draw_text(baseX+8,baseY+184+halfMYY-credits_scroll,"Voice Actor (Soul Guardian)");
draw_text(baseX+8,baseY+192+halfMYY-credits_scroll,"Voice Actor (Skeleton King");
draw_text(baseX+8,baseY+200+halfMYY-credits_scroll,"& Gigantum Slime)");
draw_text(baseX+8,baseY+208+halfMYY-credits_scroll,"Voice Actor (Judgement");
draw_text(baseX+8,baseY+216+halfMYY-credits_scroll,"& Redeemer)");
draw_text(baseX+8,baseY+232+halfMYY-credits_scroll,"Publisher");
draw_set_halign(fa_center)
draw_set_color(c_white);        
draw_text(baseX,baseY+240+halfMYY-credits_scroll,"Back");
    
///Controls
if ( up_key[KEYBOARD] || up_key[GAMEPAD_1] || up_key[GAMEPAD_2] ) {
    target_credits_scroll-=4;
} else if ( down_key[KEYBOARD] || down_key[GAMEPAD_1] || down_key[GAMEPAD_2] ) {
    target_credits_scroll+=4;
}
    
if ( target_credits_scroll < 0 ) {
    target_credits_scroll = 0;
} else if (target_credits_scroll > max_credits_scroll) {
    target_credits_scroll = max_credits_scroll;
}

var diff = target_credits_scroll-credits_scroll;
if ( diff > 2 ) {
    credits_scroll++;
} else if ( diff < -2 ) {
    credits_scroll--;
} else {
    credits_scroll = target_credits_scroll;
}    

#define scr_menu_settings
///scr_menu_settings
Save_Settings();
option = clamp(option,0,maxOption);
maxOption = 8;
if (back[GAMEPAD_1] || back[GAMEPAD_2] || back[KEYBOARD]) {
    menu_index = MENU_MAIN;
    option = 1;
    //Play_Sound_Normal(snd_accept,1,0);
}

//Text
draw_text(xxxx,yyyy[0],text_settings[0]);
draw_text(xxxx,yyyy[1],text_settings[1]);
draw_text(xxxx,yyyy[2],text_settings[2]);
draw_text(xxxx,yyyy[3],text_settings[3]);
draw_text(xxxx,yyyy[4],text_settings[4]);
draw_text(xxxx,yyyy[5],text_settings[5]);
draw_text(xxxx,yyyy[6],text_settings[6]);
draw_text(xxxx,yyyy[7],text_settings[7]);
draw_text(xxxx,yyyy[8],text_settings[8]);

//Select
if ((!up_key[GAMEPAD_1] || !up_key[GAMEPAD_2] || !up_key[KEYBOARD] || !down_key[0] || !down_key[1] || !down_key[KEYBOARD]) && alarm[0] <= room_speed*.1) {
    draw_text_colour(xxxx+1,yyyy[option]-1,text_settings[option],make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),1);
    } else {
        draw_text_colour(xxxx,yyyy[option],text_settings[option],make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),1);
}
            
//Option selection
draw_text(xxx,yyyy[0],string(global.width) + "x" + string(global.height));
draw_text(xxx,yyyy[1],fullscreen[global.fullscreen]);
draw_text(xxx,yyyy[2],vsync[global.vsync]);
draw_text(xxx,yyyy[5],vibration[global.vibration]);
draw_text(xxx,yyyy[6],lang[global.language]);
//Volume var
draw_sprite(spr_volume_bar,global.msc_vol/10,vol_x,vol_y); 
draw_sprite(spr_volume_bar,global.sfx_vol/10,vol_x,vol_y+28); 
switch (option) {
              
    case 0://Resolution
    if (alarm[2]<=0) {
    if (right_key[GAMEPAD_1] || right_key[GAMEPAD_2] || right_key[KEYBOARD]){
    if (global.resolution < 10) { 
        alarm[2] = room_speed*0.25;
        global.resolution+= 1;
        instance_create(x,y,apply_screen_settings);
        }
    }
    if (left_key[GAMEPAD_1] || left_key[GAMEPAD_2] || left_key[KEYBOARD]) {   
        if (global.resolution > 0) { 
            alarm[2] = room_speed*0.25;
            global.resolution-= 1;
            instance_create(x,y,apply_screen_settings);
            }
        }
    }
    break;
           
    case 1:///FullScreen
    if (alarm[2]<=0) {
        if (max(left_key[GAMEPAD_1],left_key[GAMEPAD_2],left_key[KEYBOARD],right_key[0],right_key[1],right_key[KEYBOARD])){
            alarm[2] = room_speed*0.25;
            global.fullscreen = !global.fullscreen;
            instance_create(x,y,apply_screen_settings);
        }
    }
    break;
           
    case 2:///VSYNC
    if (alarm[2]<=0) {
        if (max(left_key[GAMEPAD_1],left_key[GAMEPAD_2],left_key[KEYBOARD],right_key[0],right_key[1],right_key[KEYBOARD])) {
            alarm[2] = room_speed*0.25;
            global.vsync = !global.vsync;
            instance_create(x,y,apply_screen_settings);
        }
    }
    break;
           
    case 3:///MSC VOL
    if (alarm[4] <= 0) {
        Save_Settings();
        if (right_key[GAMEPAD_1] || right_key[GAMEPAD_2] || right_key[KEYBOARD]){
            if (global.msc_vol < 100) { 
                alarm[4] = room_speed*.2;
                global.msc_vol += 10;
                
                    
            }
        }
        if (left_key[GAMEPAD_1] || left_key[GAMEPAD_2] || left_key[KEYBOARD]) {   
            if (global.msc_vol > 0) { 
                alarm[4] = room_speed*.2;
                global.msc_vol -= 10;
               
            }
        } 
    }
    break;
              
    case 4:///SFX VOL
    if (alarm[4] <= 0) {
        Save_Settings();
        if (right_key[GAMEPAD_1] || right_key[GAMEPAD_2] || right_key[KEYBOARD]){
            if (global.sfx_vol < 91) { 
                alarm[4] = room_speed*.2;
                global.sfx_vol += 10;
            }
        }
    if (left_key[GAMEPAD_1] || left_key[GAMEPAD_2] || left_key[KEYBOARD]) {   
        if (global.sfx_vol > 0) { 
            alarm[4] = room_speed*.2;
            global.sfx_vol -= 10;
           
            //audio_master_gain(global.audio);
            }
        } 
    }
    break;
              
    case 5://Vibration
    if (alarm[2]<=0) {
        if (max(left_key[GAMEPAD_1],left_key[GAMEPAD_2],left_key[KEYBOARD],right_key[GAMEPAD_1],right_key[GAMEPAD_2],right_key[KEYBOARD])) {
            alarm[2] = room_speed*0.25;
            global.vibration = !global.vibration;
            if (global.vibration) {
                gamepad_set_vibration(0,.5,.5);
                alarm[6]= room_speed*.25;
            }
        }
    }
    break;
                
    case 6://Language
    if (alarm[4] <= 0) {
        if (right_key[GAMEPAD_1] || right_key[GAMEPAD_2] || right_key[KEYBOARD]) {
            if (global.language < 1) /*ENGLISH/SPANISH*/{ 
                alarm[4] = room_speed*.5;
                global.language += 1;
                }
            }
            if (left_key[GAMEPAD_1] || left_key[GAMEPAD_2] || left_key[KEYBOARD]) {   
                 if ( global.language > 0 ) { 
                    alarm[4] = room_speed*.5;
                    global.language -= 1;
                    
                 }
              } 
    }
              
    case 7://Reset Data
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]) {
                
    }
    break;
              
    case 8://Back
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]) {
        menu_index = MENU_OPTIONS;
        option = 3;
    }
    break;
              
}

#define scr_menu_background_fx
///Menu Background Effect
gml_pragma("forceinline");
//draw_text(20,30,string(option)) Text Option
    if (global.pad[0] = GAMEPAD_1) {
        draw_sprite(spr_Gamepad_Icon,0,50,25);
    } else {
        draw_sprite(spr_Gamepad_Icon,1,50,25);
    }

    var baseX=160,baseY=120;

    draw_set_blend_mode(bm_add);
    draw_sprite_ext(spr_Menu,1,baseX+choose(random(1),-random(1)),((baseY))+myy+choose(random(1),-random(1)),1,1,0,c_aqua,malpha/6); //+sin(n/10)*4
    draw_sprite_ext(spr_Menu,1,baseX+choose(random(1),-random(1)),((baseY))+myy+choose(random(1),-random(1)),1,1,0,c_aqua,malpha/6); //+sin(n/10)*4
    draw_sprite_ext(spr_Menu,1,baseX+choose(random(1),-random(1)),((baseY))+myy+choose(random(1),-random(1)),1,1,0,c_aqua,malpha/6); //+sin(n/10)*4
    draw_sprite_ext(spr_Menu,1,baseX+choose(random(1),-random(1)),((baseY))+myy+choose(random(1),-random(1)),1,1,0,c_aqua,malpha/6); //+sin(n/10)*4
    
    draw_sprite_ext(spr_Menu,2,baseX+choose(random(2),-random(2)),((baseY))+myy+choose(random(2),-random(2)),1,1,0,c_purple,malpha/4); //+sin(n/10)*4
    draw_sprite_ext(spr_Menu,2,baseX+choose(random(2),-random(2)),((baseY))+myy+choose(random(2),-random(2)),1,1,0,c_purple,malpha/4); //+sin(n/10)*4
    draw_sprite_ext(spr_Menu,2,baseX+choose(random(2),-random(2)),((baseY))+myy+choose(random(2),-random(2)),1,1,0,c_purple,malpha/4); //+sin(n/10)*4
    draw_sprite_ext(spr_Menu,2,baseX+choose(random(2),-random(2)),((baseY))+myy+choose(random(2),-random(2)),1,1,0,c_purple,malpha/4); //+sin(n/10)*4
    draw_set_blend_mode(bm_normal);
    
    draw_sprite_ext(spr_Menu,0,baseX,((baseY))+myy+32,1,1,0,c_black,malpha/3); //+sin(n/10)*4
    draw_sprite_ext(spr_Menu,0,baseX,((baseY))+myy,1,1,0,image_blend,malpha); //+sin(n/10)*4
    n+=1;
    draw_set_blend_mode(bm_add);
    draw_sprite_ext(spr_Menu,1,baseX+choose(random(2),-random(2)),((baseY))+myy+choose(random(2),-random(2)),1,1,0,c_white,malpha/6); //+sin(n/10)*4
    draw_sprite_ext(spr_Menu,1,baseX+choose(random(2),-random(2)),((baseY))+myy+choose(random(2),-random(2)),1,1,0,c_white,malpha/6); //+sin(n/10)*4
    draw_sprite_ext(spr_Menu,1,baseX+choose(random(2),-random(2)),((baseY))+myy+choose(random(2),-random(2)),1,1,0,c_white,malpha/6); //+sin(n/10)*4
    draw_sprite_ext(spr_Menu,1,baseX+choose(random(2),-random(2)),((baseY))+myy+choose(random(2),-random(2)),1,1,0,c_white,malpha/6); //+sin(n/10)*4
    draw_set_blend_mode(bm_normal);

    repeat(random(2)) {
        with ( instance_create(320/2+choose(-random(8),random(8)),64+choose(-random(8),random(8)),obj_Circle_Part) ) {
            col = c_aqua;
            maxrad = random_range(6,8);
            rad = maxrad;
            fspd = 0.1;
            vspeed = -1-random(-1);
        }
    }
///Extr Info    
//draw_text(16,240-4,itxt);
draw_set_halign(fa_center);
draw_set_color(c_gray);
var ver = "Beta v3.01";
draw_set_font(font0);
//draw_text(baseX,240-12,ver);
draw_text(baseX,15,ver);
draw_sprite_ext(spr_Copyright,0,baseX,240-8,1,1,0,c_gray,1);
draw_set_halign(false);
draw_set_valign(false);
//draw_set_alpha(.8);
//draw_set_color(c_black);
//draw_rectangle(0,0,320,240,false);
draw_set_font(fntPixelLife);
//draw_set_alpha(1);
draw_set_halign(fa_center);

#define scr_menu_forge
///scr_menu_forge
gml_pragma("forceinline");
if (back[GAMEPAD_1] || back[GAMEPAD_2] || back[KEYBOARD] && (!instance_exists(obj_Forge_Effect)) ) {
    menu_index = MENU_MAIN;
    option = 3; //audio_play_sound(snd_accept,1,0);
    save_ingredients();
    save_forge_items();
    save_hero_weapons();
    save_recipes();
    Play_Sound( snd_choose,1,.5,0,5000,true,false );
    menu_index = MENU_MAIN;
}


var pad = GAMEPAD_1;
key_up = gamepad_check_lpushed_up(GAMEPAD_1);
key_down = gamepad_check_lpushed_down( GAMEPAD_1);
key_left = gamepad_axis_value(GAMEPAD_1,gp_axislh)<-gamepad_axis_deadzone;
key_right = gamepad_axis_value(pad,gp_axislh)>gamepad_axis_deadzone;
key_right_pressed = gamepad_check_lpushed_right(pad);
key_left_pressed = gamepad_check_lpushed_left(pad);
key_pick = gamepad_button_check_pressed(pad,ds_map_find_value(global.ckeys,'pick'));//gamepad_button_check_pressed(pad,ds_map_find_value(global.ckeys,'fskill'));
key_q = gamepad_button_check_pressed(pad,ds_map_find_value(global.ckeys,'sskill'));
key_e = gamepad_button_check_pressed(pad,ds_map_find_value(global.ckeys,'tskill'));
key_up=key_up||keyboard_check_pressed(ds_map_find_value(global.keys,'up'));
key_down=key_down||keyboard_check_pressed(ds_map_find_value(global.keys,'down'));
key_left=key_left||keyboard_check(ds_map_find_value(global.keys,'left'));
key_right=key_right||keyboard_check(ds_map_find_value(global.keys,'right'));
key_left_pressed=key_left_pressed||keyboard_check_pressed(ds_map_find_value(global.keys,'left'));
key_right_pressed=key_right_pressed||keyboard_check_pressed(ds_map_find_value(global.keys,'right'));
key_pick=key_pick||keyboard_check_pressed(ds_map_find_value(global.keys,'pick'));
key_q=key_q||keyboard_check_pressed(ds_map_find_value(global.keys,'sskill'));
key_e=key_e||keyboard_check_pressed(ds_map_find_value(global.keys,'tskill'));
                

if (!instance_exists(obj_Forge_Effect)) {
    if ( arcane_forge_mode == 1 ) /*/Default */ {
            if (key_right_pressed) {
                arcane_forge_char++;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            } else if (key_left_pressed) {
                arcane_forge_char--;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            
            if (arcane_forge_char>9) {
                arcane_forge_char-=10;
            } else if (arcane_forge_char<0) {
                arcane_forge_char+=10;
            }
            
            if (key_down) {
                selected_recipe++;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            } else if (key_up) {
                selected_recipe--;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            
            if (selected_recipe>=global.number_recipes)
            {
                selected_recipe=global.number_recipes-1;
            } else if (selected_recipe<0)
            {
                selected_recipe=0;
            }
    } else if (arcane_forge_mode==0) { //Weapon Inventory
    
        var max_lines = max(global.forge_item_amount,9);
        
        if (key_right_pressed) {
            arcane_forge_item_slot++;
            Play_Sound(snd_choose,1,.5,0,5000,true,false);
        } else if (key_left_pressed) {
            arcane_forge_item_slot--;
            Play_Sound(snd_choose,1,.5,0,5000,true,false);
        } else if (key_up) {
            arcane_forge_item_slot-=3;
            Play_Sound(snd_choose,1,.5,0,5000,true,false);
        } else if (key_down) {
            arcane_forge_item_slot+=3;
            Play_Sound(snd_choose,1,.5,0,5000,true,false);
        }
            
        if (arcane_forge_item_slot>=max_lines) {
            arcane_forge_item_slot=max_lines-1;
        } else if (arcane_forge_item_slot<0) {
            arcane_forge_item_slot=0;
        }
        
        arcane_forge_item_base_line=floor(arcane_forge_item_slot/3);
        }
        else if (arcane_forge_mode==2) //Ingredient Inventory
        {
            var max_lines = max(global.forge_item_amount,9);
            if (key_right_pressed)
            {
                arcane_forge_ing_slot++;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            else if (key_left_pressed)
            {
                arcane_forge_ing_slot--;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            else if (key_up)
            {
                arcane_forge_ing_slot-=4;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            else if (key_down)
            {
                arcane_forge_ing_slot+=4;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            if (arcane_forge_ing_slot>=max_lines)
            {
                arcane_forge_ing_slot=max_lines-1;
            }
            else if (arcane_forge_ing_slot<0)
            {
                arcane_forge_ing_slot=0;
            }
            arcane_forge_ing_base_line=floor(arcane_forge_ing_slot/4);
        }
        
        if (key_q)
        {
            arcane_forge_mode--;
            Play_Sound(snd_choose,1,.5,0,5000,true,false);
        }
        else if (key_e)
        {
            arcane_forge_mode++;
            Play_Sound(snd_choose,1,.5,0,5000,true,false);
        }
    }
    if (arcane_forge_mode>2)
    {
        arcane_forge_mode-=3;
    }
    else if (arcane_forge_mode<0)
    {
        arcane_forge_mode+=3;
    }

    if (global.number_recipes>0)
    {
        //Ifs instead of attribution due to possible animation reset.
        if (global.total_coins>=global.recipe_forge_cost[global.recipe[selected_recipe]])
        {
            arcane_forge_cost_complete=true;
        }
        else
        {
            arcane_forge_cost_complete=false;
        }
        
        var r_index = global.recipe[selected_recipe];
        
        arcane_forge_all_ingredients=true;
        for (var i=0;i<global.recipe_ingredient_number[r_index];i++)
        {
            loaded_forge_ingredients=true;
            arcane_forge_ingredients[i]=forge_get_stack_count(global.recipe_ingredient_type[r_index,i]);
            arcane_forge_requirements[i]=(arcane_forge_ingredients[i]>=global.recipe_ingredient_amount[r_index,i]);
            arcane_forge_all_ingredients=arcane_forge_all_ingredients && arcane_forge_requirements[i];
        }
    }
    else
    {
        loaded_forge_ingredients=true;
    }
    
    var exit_key=false;
    if (gamepad_detected)
    {
        var _pad=gamepad_get_index(0);
        if (_pad!=-1)
        {
            exit_key=gamepad_button_check_pressed(_pad,gp_face2);
        }
    }
    else if (joystick_detected)
    {
        exit_key=joystick_button_pressed[0,2];
    }
    
    exit_key=exit_key||keyboard_check_pressed(vk_escape);
    
    if (key_pick)
    {
        if (arcane_forge_mode!=0)
        {
            if (global.number_recipes>0)
            {
                if(!instance_exists(obj_Forge_Effect) && can_forge_item(global.recipe[selected_recipe]))
                {
                    instance_create(160,90,obj_Forge_Effect);
                }
            }
        }
        else
        {
            if (arcane_forge_item_slot<global.forge_item_amount)
            {
                if (equip_weapon(arcane_forge_item_slot,arcane_forge_char))
                {
                    //Play sound equip
                }
                else
                {
                    display_message(room_width/2,room_height/2,"That hero cannot equip that weapon!",3,true);
                }
            }
        }
    }
    

//////////
///Drawing
/*
draw_set_font(font1);
var baseX=160,baseY=120;
//var baseX=0,baseY=0;
var mmyForge = -160
var halfMYY= myy / 2;

var using_gamepad = gamepad_detected || joystick_detected;
    var _desc="";
    var scroll_info="",forge_info="",hero_info="",inv_info="",switch_info="";
    var prev_key,next_key;
    if (using_gamepad)
    {
        switch (arcane_forge_mode)
        {
            case 2:
                scroll_info="LS-UP/LS-DOWN -vertical slot movement";
                forge_info = Return_ContKey(ds_map_find_value(global.ckeys,'left'))+"/"
                +Return_ContKey(ds_map_find_value(global.ckeys,'right'))+"-horizontal slot movement";
                hero_info = Return_ContKey(ds_map_find_value(global.ckeys,'sskill'))+"/"
                +Return_ContKey(ds_map_find_value(global.ckeys,'tskill'))+"-switch menu";
                switch_info = "";
                prev_key=Return_ContKey(ds_map_find_value(global.ckeys,'sskill'));
                next_key=Return_ContKey(ds_map_find_value(global.ckeys,'tskill'));
            break;
            case 1:
                scroll_info="LS-UP/LS-DOWN -scroll recipes";
                forge_info = Return_ContKey(ds_map_find_value(global.ckeys,'pick'))+"-forge item";
                hero_info = Return_ContKey(ds_map_find_value(global.ckeys,'left'))+"/"
                +Return_ContKey(ds_map_find_value(global.ckeys,'right'))+"-switch hero";
                switch_info = Return_ContKey(ds_map_find_value(global.ckeys,'sskill'))+"/"
                +Return_ContKey(ds_map_find_value(global.ckeys,'tskill'))+"-switch menu";
                prev_key=Return_ContKey(ds_map_find_value(global.ckeys,'sskill'));
                next_key=Return_ContKey(ds_map_find_value(global.ckeys,'tskill'));
            break;
        
            case 0:
                scroll_info="LS-UP/LS-DOWN -vertical slot movement";
                forge_info = Return_ContKey(ds_map_find_value(global.ckeys,'left'))+"/"
                +Return_ContKey(ds_map_find_value(global.ckeys,'right'))+"-horizontal slot movement";
                hero_info = Return_ContKey(ds_map_find_value(global.ckeys,'pick'))+"-equip item";
                switch_info = Return_ContKey(ds_map_find_value(global.ckeys,'sskill'))+"/"
                +Return_ContKey(ds_map_find_value(global.ckeys,'tskill'))+"-switch menu";
                prev_key=Return_ContKey(ds_map_find_value(global.ckeys,'sskill'));
                next_key=Return_ContKey(ds_map_find_value(global.ckeys,'tskill'));
            break;
        }
    }
    else
    {
        switch (arcane_forge_mode)
        {
            case 2:
 scroll_info=Return_Key(ds_map_find_value(global.keys,'up'))+"/"+
                Return_Key(ds_map_find_value(global.keys,'down'))+"-vertical slot movement";
                forge_info = Return_Key(ds_map_find_value(global.keys,'left'))+"/"
                +Return_Key(ds_map_find_value(global.keys,'right'))+"-horizontal slot movement";
                hero_info = Return_Key(ds_map_find_value(global.keys,'sskill'))+"/"
                +Return_Key(ds_map_find_value(global.keys,'tskill'))+"-switch menu";
                switch_info = "";
                prev_key=Return_Key(ds_map_find_value(global.keys,'sskill'));
                next_key=Return_Key(ds_map_find_value(global.keys,'tskill'));
            break;
            case 1:
                scroll_info=Return_Key(ds_map_find_value(global.keys,'up'))+"/"+
                Return_Key(ds_map_find_value(global.keys,'down'))+"-scroll recipes";
                forge_info = Return_Key(ds_map_find_value(global.keys,'pick'))+"-forge item";
                hero_info = Return_Key(ds_map_find_value(global.keys,'left'))+"/"
                +Return_Key(ds_map_find_value(global.keys,'right'))+"-switch hero";
                switch_info = Return_Key(ds_map_find_value(global.keys,'sskill'))+"/"
                +Return_Key(ds_map_find_value(global.keys,'tskill'))+"-switch menu";
                prev_key=Return_Key(ds_map_find_value(global.keys,'sskill'));
                next_key=Return_Key(ds_map_find_value(global.keys,'tskill'));
            break;
        
            case 0:
                scroll_info=Return_Key(ds_map_find_value(global.keys,'up'))+"/"+
                Return_Key(ds_map_find_value(global.keys,'down'))+"-vertical slot movement";
                forge_info = Return_Key(ds_map_find_value(global.keys,'left'))+"/"
                +Return_Key(ds_map_find_value(global.keys,'right'))+"-horizontal slot movement";
                hero_info = Return_Key(ds_map_find_value(global.keys,'pick'))+"-equip item";
                switch_info = Return_Key(ds_map_find_value(global.keys,'sskill'))+"/"
                +Return_Key(ds_map_find_value(global.keys,'tskill'))+"-switch menu";
                prev_key=Return_Key(ds_map_find_value(global.keys,'sskill'));
                next_key=Return_Key(ds_map_find_value(global.keys,'tskill'));
            break;
        }
    }
    draw_set_colour(c_gray);
        draw_set_halign(false);
        draw_set_valign(false);
        draw_text(baseX-156,baseY+halfMYY-20,scroll_info);
        draw_text(baseX-156,baseY+halfMYY-10,forge_info);
        draw_text(baseX-156,baseY+halfMYY,hero_info);
        draw_text(baseX-156,baseY+halfMYY+10,switch_info);

        var wear_types_x=baseX-124;
        draw_text(wear_types_x,baseY+halfMYY+43,"Can Equip:");
        switch (arcane_forge_char)
        {
            case 0:
                draw_text(wear_types_x,baseY+halfMYY+51,"Axe");
            break;
            case 1:
                draw_text(wear_types_x,baseY+halfMYY+51,"Bow");
            break;
            case 2:
                draw_text(wear_types_x,baseY+halfMYY+51,"Dagger#Knife");
            break;
            case 3:
                draw_text(wear_types_x,baseY+halfMYY+51,"Sword");
            break;
            case 4:
                draw_text(wear_types_x,baseY+halfMYY+51,"Staff");
            break;
            case 5:
                draw_text(wear_types_x,baseY+halfMYY+51,"Scepter#Staff");
            break;
            case 6:
                draw_text(wear_types_x,baseY+halfMYY+51,"Scepter#Staff");
            break;
            case 7:
                draw_text(wear_types_x,baseY+halfMYY+51,"Axe");
            break;
            case 8:
                draw_text(wear_types_x,baseY+halfMYY+51,"Axe#Sword");
            break;
            case 9:
                draw_text(wear_types_x,baseY+halfMYY+51,"Axe");
            break;
        }
    
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
    draw_set_color(c_white);
    //draw_set_font(font2);
    //draw_text(baseX,baseY+halfMYY+24,"Arcane Forge");
    //draw_set_font(font0);
    
    var coinOffset = string_width(string(global.total_coins))*0.5;
    
    draw_sprite(spr_Frame,arcane_forge_char,baseX-150,baseY+halfMYY+44);
    
    //DRAW TOTAL MOMEY
    draw_text(baseX-148,baseY+halfMYY+36,string(global.total_coins));
    draw_sprite(spr_Coin,0,baseX-144+coinOffset,baseY+halfMYY+35);
    
    if (arcane_forge_mode==1)
    {
        draw_set_color(c_yellow);
    }
    else
    {
        draw_set_color(c_white);
    }
    var wtag,itag,rtag,ftag;
    switch (arcane_forge_mode)
    {
        case 0:
            wtag="["+next_key+"]";
            rtag="["+next_key+"]";
            itag="["+prev_key+"]";
            ftag="";
        break;
        case 1:
            wtag="";
            rtag="";
            itag="["+next_key+"]";
            ftag="["+prev_key+"]";
        break;
        case 2:
            wtag="["+prev_key+"]";
            rtag="["+prev_key+"]";
            itag="";
            ftag="["+next_key+"]";
        break;
    }
    draw_text(baseX-142,baseY+halfMYY+66,"Weapon"+wtag);
    draw_set_color(c_white);
    draw_set_color(c_gray);
    var forgeX=baseX,forgeY=90;
    draw_sprite(spr_Inventory_Slot,0,baseX-154,baseY+halfMYY+70);
    if (arcane_forge_cost_complete)
    {
        draw_set_colour(DS_BLUE);
        draw_circle(forgeX,forgeY,arcane_forge_base_radius+64+(2*halfMYY),true);
        draw_set_colour(c_gray);
    }
    else
    {
        draw_circle(forgeX,forgeY,arcane_forge_base_radius+64+(2*halfMYY),true);
    }
    if (arcane_forge_cost_complete && arcane_forge_all_ingredients)
    {
        draw_set_colour(make_colour_rgb(140,150,230));
        draw_circle(forgeX,forgeY,arcane_forge_base_radius+8+(1.5*halfMYY),true);
        draw_set_colour(c_gray);
    }
    else
    {
        draw_circle(forgeX,forgeY,arcane_forge_base_radius+8+(1.5*halfMYY),true);
    }
    if (arcane_forge_all_ingredients)
    {
        draw_set_colour(make_colour_rgb(40,60,128));
        draw_circle(forgeX,forgeY,arcane_forge_base_radius+halfMYY,true);
        draw_set_colour(c_gray);
    }
    else
    {
        draw_circle(forgeX,forgeY,arcane_forge_base_radius+halfMYY,true);
    }
    if (arcane_forge_mode==2)
    {
        draw_set_color(c_yellow);
    }
    else
    {
        draw_set_color(c_white);
    }
    
    var extraOffset=1;
    draw_text(baseX-30,baseY+134+halfMYY,"Ingredients"+itag);
    draw_set_color(c_white);
    var ing_ind = 0;
    for (var i=0;i<2;i++)
    {
        for (var j=0;j<4;j++)
        {
            var __ind = ing_ind+arcane_forge_ing_base_line*4;
            if (j==(arcane_forge_ing_slot%4) && i==0)
            {
                draw_sprite_ext(spr_Inventory_Slot,0,baseX-54+j*28,baseY+140+halfMYY+i*28,1,1,0,c_aqua,1);
                if (arcane_forge_mode==2)
                {
                    if (arcane_forge_ing_slot<global.ingredients_amount)
                    {
                        _desc="["+global.ingredient_name[arcane_forge_ing_slot]+"]#"+global.ingredient_description[arcane_forge_ing_slot];
                    }
                }
            }
            else
            {
                draw_sprite(spr_Inventory_Slot,0,baseX-54+j*28,baseY+140+halfMYY+i*28);
            }
            if (__ind<global.ingredients_amount)
            {
                draw_sprite(global.ingredient_type[__ind],0,baseX-42+j*28,baseY+152+halfMYY+i*28);
                draw_text_outlined(baseX-48+j*28,baseY+160+halfMYY+i*28,string(global.ingredient_count[__ind]),c_black,c_white);
            }
            ing_ind++;
        }
    }
    if (arcane_forge_mode==0)
    {
        draw_set_color(c_yellow);
    }
    else
    {
        draw_set_color(c_white);
    }
    draw_text(baseX-114,baseY+halfMYY+110,"Forge Inventory"+ftag);
    draw_set_color(c_white);
    //var stop_condition = ceil(max(global.forge_item_amount,9)/3);
    var fg_it_count=0;
    for (var i=0;i<3;i++)
    {
        for (var j=0;j<3;j++)
        {
            var it_i = arcane_forge_item_base_line*3;
            if (arcane_forge_item_slot%3 == j && i==0)
            {
                draw_sprite_ext(spr_Inventory_Slot,0,baseX-150+(j*24),baseY+halfMYY+120+(i*24),1,1,0,c_aqua,1);
                if (arcane_forge_item_slot<global.forge_item_amount && arcane_forge_mode==0)
                {
                    _desc="["+global.forge_item_name[arcane_forge_item_slot]+"]#"+global.forge_item_description[arcane_forge_item_slot];
                }
            }
            else
            {
                draw_sprite(spr_Inventory_Slot,0,baseX-150+(j*24),baseY+halfMYY+120+(i*24));
            }
            if (fg_it_count+it_i<global.forge_item_amount)
            {
                draw_sprite_stretched(global.forge_item_sprite[fg_it_count+it_i],0,
                baseX-150+(j*24),baseY+halfMYY+120+(i*24),24,24);
            }
            fg_it_count++;
        }
    }
    if (arcane_forge_mode==1)
    {
        draw_set_color(c_yellow);
    }
    else
    {
        draw_set_color(c_white);
    }
    draw_text(baseX+116,baseY+halfMYY,"Recipe List"+rtag);
    draw_set_color(make_colour_rgb(47,32,47));
    draw_set_alpha(0.5);
    draw_rectangle(baseX+90,baseY+halfMYY+10,baseX+160,baseY+halfMYY+90,false);
    draw_set_alpha(1);
    draw_set_color(make_colour_rgb(47,16,47));
    draw_rectangle(baseX+89,baseY+halfMYY+9,baseX+160,baseY+halfMYY+90,true);
    draw_set_color(c_white);
    draw_sprite_stretched(global.arcane_forge_weapon_sprite[arcane_forge_char],0,baseX-153,baseY+halfMYY+71,20,20);
    if (global.number_recipes>0)
    {
        var forge_text = "Forge ("+string(global.recipe_forge_cost[global.recipe[selected_recipe]]);
        if (arcane_forge_cost_complete && arcane_forge_all_ingredients)
        {
            draw_set_colour(DS_BLUE);
            draw_rectangle(baseX-20-string_width(forge_text)*0.5,baseY+halfMYY+112,
                baseX+20+string_width(forge_text)*0.5,baseY+halfMYY+124,false);
            draw_set_colour(c_white);
        }
        draw_sprite(spr_Coin,0,baseX-1+string_width(forge_text)*0.5,baseY+halfMYY+119);
        draw_text(baseX,baseY+halfMYY+120,forge_text+"   )");
        extraOffset=global.recipe_ingredient_number[global.recipe[selected_recipe]];
        arcane_item_angle-=1/extraOffset;
        if (arcane_item_angle<0)
        {
            arcane_item_angle+=360;
        }
        var hover_angle;
        var angle_offset=360/extraOffset;
        var ing_x,ing_y;
        for (var i=0;i<extraOffset;i++)
        {
            hover_angle = degtorad(arcane_item_angle+(angle_offset*i));
            ing_x=forgeX+(arcane_forge_base_radius+halfMYY)*cos(hover_angle);
            ing_y=forgeY-(arcane_forge_base_radius+halfMYY)*sin(hover_angle);
            draw_sprite(global.recipe_ingredient_type[global.recipe[selected_recipe],i],0,ing_x,ing_y);
            var forge_index = i;
            if (!loaded_forge_ingredients)
            {
                forge_index=0;
            }
            draw_text_outlined(ing_x,ing_y+4,
                string(min(arcane_forge_ingredients[forge_index],
                global.recipe_ingredient_amount[global.recipe[selected_recipe],i]))+"/"+string(global.recipe_ingredient_amount[global.recipe[selected_recipe],i]),c_black,c_white);
        }
        hover_angle = degtorad(arcane_item_angle*extraOffset);
    
        draw_set_colour(c_white);
        draw_set_halign(false);
        draw_set_valign(false);
        if (selected_recipe==0)
        {
            draw_set_color(make_colour_rgb(63,48,63));
        }
        else
        {
            draw_set_colour(c_yellow);
        }
        draw_primitive_begin(pr_trianglelist);
            draw_vertex(baseX+125,baseY+halfMYY+14);
            draw_vertex(baseX+135,baseY+halfMYY+18);
            draw_vertex(baseX+115,baseY+halfMYY+18);
        draw_primitive_end();
        if (selected_recipe>=global.number_recipes-1)
        {
            draw_set_color(make_colour_rgb(63,48,63));
        }
        else
        {
            draw_set_colour(c_yellow);
        }
        draw_primitive_begin(pr_trianglelist);
            draw_vertex(baseX+125,baseY+halfMYY+88);
            draw_vertex(baseX+135,baseY+halfMYY+84);
            draw_vertex(baseX+115,baseY+halfMYY+84);
        draw_primitive_end();
        draw_set_color(make_colour_rgb(47,16,47));
        draw_line(baseX+90,baseY+halfMYY+22,baseX+160,baseY+halfMYY+22);
        draw_line(baseX+90,baseY+halfMYY+78,baseX+160,baseY+halfMYY+78);
        draw_set_colour(c_white);
        {
            if (selected_recipe<global.number_recipes)
            {
                draw_sprite_stretched(global.recipe_sprite[global.recipe[selected_recipe]],0,baseX+92,baseY+halfMYY+24,12,12);
                draw_text_ext(baseX+92,baseY+halfMYY+40,global.recipe_name[global.recipe[selected_recipe]],-1,128);
                draw_text_ext(baseX+92,baseY+halfMYY+56,"Type: "+string(global.recipe_type[global.recipe[selected_recipe]]),-1,128);
            }
            if (arcane_forge_mode==1)
            {
                _desc=global.recipe_description[global.recipe[selected_recipe]];
            }
            draw_sprite_stretched_ext(global.recipe_result[global.recipe[selected_recipe]],0,forgeX-12,-12+forgeY-4*sin(hover_angle),24,24,c_white,0.2);
        }
    }
    else
    {
        draw_text(baseX+122,baseY+halfMYY+60,"You have#no recipes");
    }
    draw_set_color(c_white);
    if (_desc!="")
    {
        draw_set_halign(false);
        draw_set_valign(false);
        draw_text(baseX+94,baseY+104+halfMYY,"Description");
        draw_text_ext(baseX+94,baseY+116+halfMYY,_desc,-1,64);
    }
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    //draw_sprite(spr_Mouse_Cursor,0,mouse_x,mouse_y);
    //draw_text(baseX,baseY+186+halfMYY,"Back"); 



#define scr_menu_options_adv
///scr_menu_settings
option = clamp(option,0,maxOption);
maxOption = 4;
if (back[GAMEPAD_1] || back[GAMEPAD_2] || back[KEYBOARD]) {
    menu_index = MENU_MAIN;
    option = 3;
    //Play_Sound_Normal(snd_accept,1,0);
}

//Text
draw_text(xx,yy[0],text_options[0]);
draw_text(xx,yy[1],text_options[1]);
draw_text(xx,yy[2],text_options[2]);
draw_text(xx,yy[3],text_options[3]);
draw_text(xx,yy[4],text_options[4]);

//Select
if ((!up_key[GAMEPAD_1] || !up_key[GAMEPAD_2] || !up_key[KEYBOARD] || !down_key[0] || !down_key[1] || !down_key[KEYBOARD]) && alarm[0] <= room_speed*.1) {
    draw_text_colour(xx+1,yy[option]-1,text_options[option],make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),1);
} else {
    draw_text_colour(xx,yy[option],text_options[option],make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),make_colour_rgb(237,45,80),1);
}

switch (option) {
    
    case 0://Controls
    if ((enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]) && alarm[1]<=0) { 
        menu_index = MENU_CONTROLS;
        
    }
    break;   
    
    case 1://Gameplay
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]) {
        menu_index = MENU_GAMEPLAY;
    }
    break;
          
    case 2://Stats
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]){
       menu_index = MENU_STATS;
    }
    break;
    
    case 3://Settings
    if (enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD]) {
        option = 0;
        menu_index = MENU_SETTINGS;
    }
    break;
             
    case 4: //Back
    if ( enter[GAMEPAD_1] || enter[GAMEPAD_2] || enter[KEYBOARD] ) {
        menu_index = MENU_MAIN;
        option = 4; //Restart option
    }
    break;
              
}