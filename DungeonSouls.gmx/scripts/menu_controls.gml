 /*
     var extra;
    if menu_yy == -1
    {
        if key_left and cont_act != "keyboard"
            cont_act = "keyboard";
        else if key_right and cont_act != "controller"
            cont_act = "controller";
    }
    if ( cont_act=="keyboard" ) {
        extra=0;
    } else {
        extra=3;
    }
        
    if key_up and cont_change = false {
        if menu_yy > -1
            menu_yy -= 1
        else
            menu_yy = 11+extra
    } else
    if ( key_down and cont_change = false ) {
        if ( menu_yy < 11+extra )
            menu_yy += 1;
        else
            menu_yy = -1;
    }    
    if ( key_pick and cont_change = false )
    {
        Play_Sound(snd_choose,1,.5,0,5000,true,false);    
        switch(menu_yy)
        {
            case 0:            
                if No_Key_Change() && cont_act!="controller"  { change[0] = true; cont_change = true; }
                break;
            case 1:
                if No_Key_Change() && cont_act!="controller" { change[1] = true; cont_change = true; }
                break;
            case 2:
                if No_Key_Change()  && cont_act!="controller" { change[2] = true; cont_change = true; }
                break;
            case 3:            
                if No_Key_Change()  && cont_act!="controller" { change[3] = true; cont_change = true; }
                break;
            case 4:                
                if No_Key_Change()  { change[4] = true; cont_change = true; }
                break;
            case 5:
                if No_Key_Change()  { change[5] = true; cont_change = true; }
                break;
            case 6:
                if No_Key_Change()  { change[6] = true; cont_change = true; }
                break;
            case 7:
                if No_Key_Change()  { change[7] = true; cont_change = true; }
                break;
            case 8:
                if No_Key_Change()  { change[8] = true; cont_change = true; }
                break;                                                 
            case 9:
                if No_Key_Change()  { change[9] = true; cont_change = true; }
                break;
            case 10:
                if No_Key_Change()  { change[10] = true; cont_change = true; }
                break;
            case 11:   
                if (extra==0)
                {
                    Save_Settings();
                    menu_yy = 0;             
                    menu_part = 1;
                }
                else
                {
                    if No_Key_Change()  { change[11] = true; cont_change = true; }
                }
                break;
            case 12:
                if (extra!=0)
                {
                    if No_Key_Change()  { change[12] = true; cont_change = true; }
                }
                break;
            case 13:
                if (extra!=0)
                {
                    if No_Key_Change()  { change[13] = true; cont_change = true; }
                }
                break;
            case 14:
                if (extra!=0)
                {
                    Save_Settings();
                    menu_yy = 0;             
                    menu_part = 1;
                }
                break;
            default:
                break;                
        }
    }else
    if keyboard_check_pressed(vk_anykey)
    { 
        if cont_act == "keyboard"
        {    
            if (!Keyboard_Has_Key(Return_VKey()))
            {
                switch(menu_yy)
                {
                    case 0:         
                        if change[0] == true
                        {                    
                            ds_map_replace(global.keys,'up',Return_VKey());                
                            change[0] = false;
                            cont_change = false;
                        }
                        break;
                    case 1:
                        if change[1] == true
                        {
                            ds_map_replace(global.keys,'down',Return_VKey());                
                            change[1] = false;
                            cont_change = false;
                        }                    
                        break;
                    case 2:
                        if change[2] == true
                        {
                            ds_map_replace(global.keys,'left',Return_VKey());                
                            change[2] = false;
                            cont_change = false;
                        }
                        break;
                    case 3:            
                        if change[3] == true
                        {
                            ds_map_replace(global.keys,'right',Return_VKey());                
                            change[3] = false;
                            cont_change = false;
                        }
                        break;
                    case 4:                
                        if change[4] == true
                        {
                            ds_map_replace(global.keys,'potion',Return_VKey());                
                            change[4] = false;
                            cont_change = false;
                        }
                        break;
                    case 5:
                        if change[5] == true
                        {
                            ds_map_replace(global.keys,'pick',Return_VKey());                
                            change[5] = false;
                            cont_change = false;
                        }
                        break;  
                    case 6:
                        if change[6] == true
                        {
                            ds_map_replace(global.keys,'stat',Return_VKey());                
                            change[6] = false;
                            cont_change = false;
                        }
                    case 7:
                        if change[7] == true
                        {
                            ds_map_replace(global.keys,'map',Return_VKey());                
                            change[7] = false;
                            cont_change = false;
                        }                
                        break; 
                    case 8:
                        if change[8] == true
                        {
                            ds_map_replace(global.keys,'inv',Return_VKey());                
                            change[8] = false;
                            cont_change = false;
                        } 
                    case 9:
                        if change[9] == true
                        {
                            ds_map_replace(global.keys,'sskill',Return_VKey());                
                            change[9] = false;
                            cont_change = false;
                        }
                    case 10:
                        if change[10] == true
                        {
                            ds_map_replace(global.keys,'tskill',Return_VKey());                
                            change[10] = false;
                            cont_change = false;
                        }                                               
                        break; 
                }
            }
            else if (cont_change)
            {
                cont_change=false;
                for (var it=0;it<11;it++)
                {
                    change[it]=false;
                }
                display_message(160,212,"'"+Return_Key(Return_VKey())+"' is already in use!",2,true);
            }
        }
    }
    else
    {
        var jany = joystick_anykey(0);
        var gkey=gamepad_anykey();
        if (gkey || jany!=-1) and cont_change == true
        {
            if (!Gamepad_Has_Key(Return_CKey()))
            {
                var ggkey = Return_CKey();
                var change_key=(ggkey!=gp_padd && ggkey!=gp_padl && ggkey!=gp_padr && ggkey!=gp_axislh && ggkey!=gp_axisrv && ggkey!=gp_axisrh && ggkey!=gp_axislv && ggkey!=gp_stickr
                && ggkey!=gp_stickl) 
                && (jany!=JOYSTICK_RSTICK_PUSHED_UP && jany!=JOYSTICK_RSTICK_PUSHED_LEFT && jany!=JOYSTICK_RSTICK_PUSHED_RIGHT && jany!=JOYSTICK_RSTICK_PUSHED_DOWN && jany!=JOYSTICK_LSTICK_PUSHED_LEFT &&
                jany!=JOYSTICK_LSTICK_PUSHED_UP && jany!=JOYSTICK_LSTICK_PUSHED_DOWN && jany!=JOYSTICK_LSTICK_PUSHED_RIGHT &&
                jany!=JOYSTICK_DPAD_RIGHT &&
                jany!=JOYSTICK_DPAD_LEFT &&
                jany!=JOYSTICK_DPAD_DOWN);
                
                if (menu_yy!=4)
                {
                    change_key = change_key && (jany!=JOYSTICK_DPAD_UP && ggkey!=gp_padu);
                }
                
                if (!change_key)
                {
                    if (gamepad_detected)
                    {
                        display_message(view_xview[0]+view_wview[0]/2,view_yview[0]+view_hview[0]-32,"Key '"+Return_ContKey(ggkey)+"' is system-reserved",1,true);
                    }
                    else if (joystick_detected)
                    {
                        display_message(view_xview[0]+view_wview[0]/2,view_yview[0]+view_hview[0]-32,"Key '"+Return_ContKey(jany)+"' is system-reserved",1,true);
                    }
                }
                
                if cont_act == "controller" && change_key
                {
                    switch(menu_yy)
                    {
                        case 0:         
                            if change[0] == true
                            {                    
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'up',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'up',textcode_to_gamepad(translate_joystick_key(jany)));
                                }
                                change[0] = false;
                                cont_change = false;
                            }
                            break;
                        case 1:
                            if change[1] == true
                            {
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'down',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'down',textcode_to_gamepad(translate_joystick_key(jany)));
                                }               
                                change[1] = false;
                                cont_change = false;
                            }                    
                            break;
                        case 2:
                            if change[2] == true
                            {
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'left',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'left',textcode_to_gamepad(translate_joystick_key(jany)));
                                }               
                                change[2] = false;
                                cont_change = false;
                            }
                            break;
                        case 3:            
                            if change[3] == true
                            {
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'right',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'right',textcode_to_gamepad(translate_joystick_key(jany)));
                                }
                                change[3] = false;
                                cont_change = false;
                            }
                            break;
                        case 4:                
                            if change[4] == true
                            {
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'potion',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'potion',textcode_to_gamepad(translate_joystick_key(jany)));
                                }             
                                change[4] = false;
                                cont_change = false;
                            }
                            break;
                        case 5:
                            if change[5] == true
                            {
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'pick',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'pick',textcode_to_gamepad(translate_joystick_key(jany)));
                                }              
                                change[5] = false;
                                cont_change = false;
                            }
                            break;  
                        case 6:
                            if change[6] == true
                            {
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'stat',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'stat',textcode_to_gamepad(translate_joystick_key(jany)));
                                }                
                                change[6] = false;
                                cont_change = false;
                            }
                        case 7:
                            if change[7] == true
                            {
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'map',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'map',textcode_to_gamepad(translate_joystick_key(jany)));
                                }
                                change[7] = false;
                                cont_change = false;
                            }                
                            break; 
                        case 8:
                            if change[8] == true
                            {
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'inv',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'inv',textcode_to_gamepad(translate_joystick_key(jany)));
                                }               
                                change[8] = false;
                                cont_change = false;
                            } 
                        case 9:
                            if change[9] == true
                            {
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'sskill',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'sskill',textcode_to_gamepad(translate_joystick_key(jany)));
                                }           
                                change[9] = false;
                                cont_change = false;
                            }
                        case 10:
                            if change[10] == true
                            {
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'tskill',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'tskill',textcode_to_gamepad(translate_joystick_key(jany)));
                                }
                                change[10] = false;
                                cont_change = false;
                            }                                               
                            break;
                        case 11:
                            if change[11] == true
                            {
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'fskill',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'fskill',textcode_to_gamepad(translate_joystick_key(jany)));
                                }
                                change[11] = false;
                                cont_change = false;
                            }                                               
                            break;   
                        case 12:
                            if change[12] == true
                            {
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'askill',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'askill',textcode_to_gamepad(translate_joystick_key(jany)));
                                }
                                change[12] = false;
                                cont_change = false;
                            }                                               
                            break; 
                        case 13:
                            if change[13] == true
                            {
                                if (jany==-1)
                                {
                                    ds_map_replace(global.ckeys,'skillup',Return_CKey());
                                }
                                else
                                {
                                    ds_map_replace(global.ckeys,'skillup',textcode_to_gamepad(translate_joystick_key(jany)));
                                }
                                change[13] = false;
                                cont_change = false;
                            }                                               
                            break; 
                    }        
                }
            }
            else  if (cont_change)
            {
                cont_change=false;
                for (var it=0;it<14;it++)
                {
                    change[it]=false;
                }
                if (jany==-1)
                {
                    display_message(160,212,"'"+Return_CKey()+"' is already in use!",2,true);
                }
                else
                {
                    display_message(160,212,"'"+textcode_to_gamepad(translate_joystick_key(jany))+"' is already in use!",2,true);
                }
            }
        }
    }  
 
 
 ///DRAW
 
 draw_set_alpha(0.4);
    draw_rectangle(baseX-32,baseY+48-4+(menu_yy*8)+halfMYY,baseX+32,baseY+48+3+(menu_yy*8)+halfMYY,false)
    draw_set_alpha(1);
    
    draw_sprite_ext(spr_KbOpt,(cont_act == "keyboard"),baseX-64,64,kbScale,kbScale,0,image_blend,1);
    draw_sprite_ext(spr_CntOpt,(cont_act == "controller"),baseX+64,64,cntScale,cntScale,0,image_blend,1);
    
    var col,extra;
    col = c_white;
    extra=0;
    if (cont_act!="keyboard")
    {
        col=c_red;
    }
    draw_set_color(col);
    draw_set_halign(fa_right);
    draw_text(baseX-4,baseY+48+halfMYY,"Key Up - ");
    draw_text(baseX-4,baseY+56+halfMYY,"Key Down - ");
    draw_text(baseX-4,baseY+64+halfMYY,"Key Left - ");
    draw_text(baseX-4,baseY+72+halfMYY,"Key Right - ");
    draw_set_color(c_white);
    draw_text(baseX-4,baseY+80+halfMYY,"Use Item - ");
    draw_text(baseX-4,baseY+88+halfMYY,"Pick up/Select - ");
    draw_text(baseX-4,baseY+96+halfMYY,"Stats Menu - ");
    draw_text(baseX-4,baseY+104+halfMYY,"Open Map - ");
    draw_text(baseX-4,baseY+112+halfMYY,"Open Inventory - ");
    draw_text(baseX-4,baseY+120+halfMYY,"Second Ability - ");
    draw_text(baseX-4,baseY+128+halfMYY,"Third Ability - ");
    if cont_act == "keyboard"
    {
        var DEVICE = "KEYBOARD >";
        if change[0] == true var kUP = "Press any key..." else var kUP = Return_Key(ds_map_find_value(global.keys,'up'));
        if change[1] == true var kDOWN = "Press any key..." else var kDOWN = Return_Key(ds_map_find_value(global.keys,'down'));
        if change[2] == true var kLEFT = "Press any key..." else var kLEFT = Return_Key(ds_map_find_value(global.keys,'left'));
        if change[3] == true var kRIGHT = "Press any key..." else var kRIGHT = Return_Key(ds_map_find_value(global.keys,'right'));
        if change[4] == true var kITEM = "Press any key..." else var kITEM = Return_Key(ds_map_find_value(global.keys,'potion'));
        if change[5] == true var kPICK = "Press any key..." else var kPICK = Return_Key(ds_map_find_value(global.keys,'pick'));
        if change[6] == true var kSTAT = "Press any key..." else var kSTAT = Return_Key(ds_map_find_value(global.keys,'stat'));    
        if change[7] == true var kMAP = "Press any key..." else var kMAP = Return_Key(ds_map_find_value(global.keys,'map'));
        if change[8] == true var kINV = "Press any key..." else var kINV = Return_Key(ds_map_find_value(global.keys,'inv'));
        if change[9] == true var kSSKILL = "Press any key..." else var kSSKILL = Return_Key(ds_map_find_value(global.keys,'sskill'));
        if change[10] == true var kTSKILL = "Press any key..." else var kTSKILL = Return_Key(ds_map_find_value(global.keys,'tskill'));
    }else
    {
        draw_text(baseX-4,baseY+136+halfMYY,"First Ability - ");
        draw_text(baseX-4,baseY+144+halfMYY,"Cast Ability - ");
        draw_text(baseX-4,baseY+152+halfMYY,"Skill Hub - ");
        extra=24;
        var DEVICE = "< CONTROLLER";    
        if change[0] == true var kUP = "Press any key..." else var kUP = Return_ContKey(ds_map_find_value(global.ckeys,'up'));
        if change[1] == true var kDOWN = "Press any key..." else var kDOWN = Return_ContKey(ds_map_find_value(global.ckeys,'down'));
        if change[2] == true var kLEFT = "Press any key..." else var kLEFT = Return_ContKey(ds_map_find_value(global.ckeys,'left'));
        if change[3] == true var kRIGHT = "Press any key..." else var kRIGHT = Return_ContKey(ds_map_find_value(global.ckeys,'right'));
        if change[4] == true var kITEM = "Press any key..." else var kITEM = Return_ContKey(ds_map_find_value(global.ckeys,'potion'));
        if change[5] == true var kPICK = "Press any key..." else var kPICK = Return_ContKey(ds_map_find_value(global.ckeys,'pick'));
        if change[6] == true var kSTAT = "Press any key..." else var kSTAT = Return_ContKey(ds_map_find_value(global.ckeys,'stat'));    
        if change[7] == true var kMAP = "Press any key..." else var kMAP = Return_ContKey(ds_map_find_value(global.ckeys,'map'));
        if change[8] == true var kINV = "Press any key..." else var kINV = Return_ContKey(ds_map_find_value(global.ckeys,'inv'));
        if change[9] == true var kSSKILL = "Press any key..." else var kSSKILL = Return_ContKey(ds_map_find_value(global.ckeys,'sskill'));
        if change[10] == true var kTSKILL = "Press any key..." else var kTSKILL = Return_ContKey(ds_map_find_value(global.ckeys,'tskill'));    
        if change[11] == true var kFSKILL = "Press any key..." else var kFSKILL = Return_ContKey(ds_map_find_value(global.ckeys,'fskill'));  
        if change[12] == true var kASKILL = "Press any key..." else var kASKILL = Return_ContKey(ds_map_find_value(global.ckeys,'askill'));  
        if change[13] == true var kSKILLUP = "Press any key..." else var kSKILLUP = Return_ContKey(ds_map_find_value(global.ckeys,'skillup'));  
    }
    draw_set_halign(fa_center);
    draw_text(baseX,baseY+40+halfMYY,DEVICE);
    draw_set_halign(fa_left);
    if (cont_act=="controller")
    {
        draw_set_color(c_red);
    }
    draw_text(baseX+8,baseY+48+halfMYY,kUP);
    draw_text(baseX+8,baseY+56+halfMYY,kDOWN);
    draw_text(baseX+8,baseY+64+halfMYY,kLEFT);
    draw_text(baseX+8,baseY+72+halfMYY,kRIGHT);
    if (cont_act=="controller")
    {
        draw_set_color(c_white);
    }
    draw_text(baseX+8,baseY+80+halfMYY,kITEM);
    draw_text(baseX+8,baseY+88+halfMYY,kPICK);
    draw_text(baseX+8,baseY+96+halfMYY,kSTAT);
    draw_text(baseX+8,baseY+104+halfMYY,kMAP);
    draw_text(baseX+8,baseY+112+halfMYY,kINV);
    draw_text(baseX+8,baseY+120+halfMYY,kSSKILL);
    draw_text(baseX+8,baseY+128+halfMYY,kTSKILL);
    if (extra!=0)
    {
        draw_text(baseX+8,baseY+136+halfMYY,kFSKILL);
        draw_text(baseX+8,baseY+144+halfMYY,kASKILL);
        draw_text(baseX+8,baseY+152+halfMYY,kSKILLUP);
    }
    draw_set_halign(fa_center)
    draw_text(baseX,baseY+136+extra+halfMYY,"Back");    
