with obj_HUD
{
        with other
        {
            var extraOffset=30;
            var dmgMultiplier=1;
            if (Item_In_List(spr_Scepter_of_Power))
            {
                dmgMultiplier*=2;
            }
            var sx = view_xview+106;
            var sy = view_yview+222;          
            
            //CONTROLS
            cont_add = max(gamepad_button_check_pressed(global.pad[GAMEPAD_1], ds_map_find_value(global.ckeys,'pick')), mouse_check_button_pressed(mb_left));            
            
            //CONTROLS            
            
            //ABILITY ADD BUTTON
            if skill_pnt > 0
            {
                if cont_add
                {
                    if mouse_x > sx and mouse_x < sx+16 and mouse_y > sy and mouse_y < sy+16
                    {                        
                        Play_Sound(snd_upskill,1,1,0,5000,true,false);
                        ability_lvl[0] += 1
                        skill_pnt -= 1
                        Refresh_Description() 
                        stat = true;                       
                        return false;
                    }
                    
                    if mouse_x > sx+16 and mouse_x < sx+15+16 and mouse_y > sy and mouse_y < sy+16
                    {
                        Play_Sound(snd_upskill,1,1,0,5000,true,false);
                        ability_lvl[1] += 1
                        skill_pnt -= 1
                        Refresh_Description(); 
                        stat = true;                                               
                        return false;
                    }
                    
                    if mouse_x > sx+32 and mouse_x < sx+30+16 and mouse_y > sy and mouse_y < sy+16
                    {
                        Play_Sound(snd_upskill,1,1,0,5000,true,false);
                        ability_lvl[2] += 1
                        skill_pnt -= 1
                        Refresh_Description();    
                        stat = true;                                            
                        return false;
                    }                   
                }else
                {                
                    return true;
                }
            }         
            //STATS
            var tempx,tempy;
            tempx=view_xview+(160)+20; //X value never changes, no need to calculate again.
            //160 was 320*0.5
            tempy = view_yview+(120); //Base Y value never changes, no need to calculate again
            //120 was 240*0.5
            
            posx[0] = tempx-1+extraOffset;
            posy[0] = tempy+11;
            
            posx[1] = tempx-1+extraOffset;
            posy[1] = tempy+17;
            
            posx[2] = tempx-1+extraOffset;
            posy[2] = tempy+23;
            
            posx[3] = tempx-1+extraOffset;
            posy[3] = tempy+29;
            
            posx[4] = tempx-1+extraOffset;
            posy[4] = tempy+35;
            
            posx[5] = tempx-1+extraOffset;
            posy[5] = tempy+41;
            
            
            if stat_pnt > 0 and other.stat
            {      
                var using_controller = global.pad[GAMEPAD_1] 
                if (mouse_x > posx[0] and mouse_x < posx[0]+9 and mouse_y > posy[0]+1 and mouse_y < posy[0]+9-1 && !using_controller) 
                || (using_controller && other.controller_stat_index==0)
                {
                    if cont_add
                    {
                        Play_Sound(snd_ups,1,.5,0,5000,true,false);
                        Popup("ATK up!",c_yellow);
                        atk_dam[char] += dmgMultiplier;
                        atk_scale = 1.5;
                        stat_pnt -= 1;
                        if stat_pnt == 0 other.stat = false;                            
                    }
                    return false;
                }else
                if (mouse_x > posx[1] and mouse_x < posx[1]+9 and mouse_y > posy[1]+1 and mouse_y < posy[1]+9-1 && !using_controller)
                || (using_controller && other.controller_stat_index==1)
                {
                    if cont_add
                    {
                        Play_Sound(snd_ups,1,.5,0,5000,true,false);    
                        Popup("DEF up!",c_yellow);    
                        defense[char] += 1; //base def
                        def_scale = 1.5;        
                        stat_pnt -= 1;
                        if stat_pnt == 0 other.stat = false;
                    }
                    return false;
                }else
                if (mouse_x > posx[2] and mouse_x < posx[2]+9 and mouse_y > posy[2]+1 and mouse_y < posy[2]+9-1 && !using_controller)
                || (using_controller && other.controller_stat_index==2)
                {
                    if cont_add
                    {
                        Play_Sound(snd_ups,1,.5,0,5000,true,false);
                        Popup("MAG up!",c_yellow);
                        mag_dam[char] += dmgMultiplier;
                        atk_scale = 1.5;
                        stat_pnt -= 1;
                        if stat_pnt == 0 other.stat = false;                            
                    }
                    return false;
                }else
                if (mouse_x > posx[3] and mouse_x < posx[3]+9 and mouse_y > posy[3]+1 and mouse_y < posy[3]+9-1 && !using_controller)
                || (using_controller && other.controller_stat_index==3)
                {
                    if cont_add
                    {
                        Play_Sound(snd_ups,1,.5,0,5000,true,false);    
                        Popup("RES up!",c_yellow);    
                        mresist[char] += 1;
                        def_scale = 1.5;        
                        stat_pnt -= 1;
                        if stat_pnt == 0 other.stat = false;
                    }
                    return false;
                }else                                              
                if (mouse_x > posx[4] and mouse_x < posx[4]+9 and mouse_y > posy[4]+1 and mouse_y < posy[4]+9-1 && !using_controller)
                || (using_controller && other.controller_stat_index==4)
                {
                    if cont_add
                    {
                        if wlk_spd[char] < 2
                        {
                            Play_Sound(snd_ups,1,.5,0,5000,true,false);    
                            Popup("SPD up!",c_yellow);    
                            wlk_spd[char] += (0.02)*wlk_spd[char]; //walking speed;
                            spd_scale = 1.5;
                            stat_pnt -= 1;
                            if stat_pnt == 0 other.stat = false;                            
                        }
                    }
                    return false;
                }else
                if (mouse_x > posx[5] and mouse_x < posx[5]+9 and mouse_y > posy[5]+1 and mouse_y < posy[5]+9-1 && !using_controller)
                || (using_controller && other.controller_stat_index==5)
                {
                    if cont_add
                    {
                        if  accuracy[char]+((0.2)*accuracy[char]) < 100
                        {
                            Play_Sound(snd_ups,1,.5,0,5000,true,false);    
                            Popup("ACC up!",c_yellow);    
                            accuracy[char] += (0.2)*accuracy[char];
                            atk_scale = 1.5;
                            stat_pnt -= 1;
                            if stat_pnt == 0 other.stat = false;                            
                        }else
                        {
                            accuracy[char] = 100
                        }
                    }
                    return false;
                }else
                {
                    return true;
                }
            }
            
    }
}
