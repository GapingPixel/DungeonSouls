  /*//
    if key_up
    {
        if menu_yy > 0
            menu_yy -= 1
        else
            menu_yy = 9;
    }else
    if key_down
    {
        if menu_yy < 9
            menu_yy += 1;
        else
            menu_yy = 0
    }          
    if key_pick
    {
        switch(menu_yy)
        {
            case 0:
                if global.screen_shake == true
                    global.screen_shake = false;
                else if global.screen_shake == false
                    global.screen_shake = true; 
                    
                break;
            case 1:
                if global.flash == true
                    global.flash = false;
                else if global.flash == false
                    global.flash = true;
                    
                break;
            case 2:
                if global.autocast == true
                    global.autocast = false;
                else if global.autocast == false
                    global.autocast = true;                    
                break;                
            case 3:
                if global.autopick == true
                    global.autopick = false;
                else if global.autopick == false
                    global.autopick = true;                    
                break; 
            case 4:
                if global.glow == true
                    global.glow = false;
                else if global.glow == false
                    global.glow = true;                    
                break;
            case 5:
                if global.hpbar == true
                    global.hpbar = false;
                else if global.hpbar == false
                    global.hpbar = true;                    
                break;
            case 6:
                if global.mapback == true
                    global.mapback = false;
                else if global.mapback == false
                    global.mapback = true;                    
                break;
            case 7:
                global.smooth_camera =! global.smooth_camera;
            break;
            case 8:
                global.vertical_sync =! global.vertical_sync;
                display_reset(display_aa,global.vertical_sync);
                change_resolution(global.screen_size);
            break;
            case 9:
                Save_Settings();
                menu_yy =0;
                menu_part = 1;
                break;             
            default:
                break;                           
        }
    }
  
   
    
    draw_set_alpha(0.4);
    draw_rectangle(baseX-64,baseY+48-4+(menu_yy*8)+halfMYY,baseX+64,baseY+48+3+(menu_yy*8)+halfMYY,false)
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_halign(fa_right)
    draw_text(baseX-4,baseY+48+halfMYY,"Screenshake: ");
    draw_text(baseX-4,baseY+56+halfMYY,"White/Red Flashes: "); 
    draw_text(baseX-4,baseY+64+halfMYY,"Skill Auto-cast: "); 
    draw_text(baseX-4,baseY+72+halfMYY,"Item Auto-pick: "); 
    draw_text(baseX-4,baseY+80+halfMYY,"Glow: ");
    draw_text(baseX-4,baseY+88+halfMYY,"Display Hp Bar: "); 
    draw_text(baseX-4,baseY+96+halfMYY,"Map Frame: "); 
    draw_text(baseX-4,baseY+104+halfMYY,"Smooth Camera: "); 
    draw_text(baseX-4,baseY+112+halfMYY,"Vertical Sync: ");
    draw_set_halign(fa_left);
    if global.screen_shake draw_text(baseX+4,baseY+48+halfMYY,"Enabled"); else draw_text(baseX+4,baseY+48+halfMYY,"Disabled");    
    if global.flash draw_text(baseX+4,baseY+56+halfMYY,"Enabled"); else draw_text(baseX+4,baseY+56+halfMYY,"Disabled");    
    if global.autocast draw_text(baseX+4,baseY+64+halfMYY,"Enabled"); else draw_text(baseX+4,baseY+64+halfMYY,"Disabled");    
    if global.autopick draw_text(baseX+4,baseY+72+halfMYY,"Enabled"); else draw_text(baseX+4,baseY+72+halfMYY,"Disabled");    
    if global.glow draw_text(baseX+4,baseY+80+halfMYY,"Enabled"); else draw_text(baseX+4,baseY+80+halfMYY,"Disabled");    
    if global.hpbar draw_text(baseX+4,baseY+88+halfMYY,"Enabled"); else draw_text(baseX+4,baseY+88+halfMYY,"Disabled");    
    if global.mapback draw_text(baseX+4,baseY+96+halfMYY,"Enabled"); else draw_text(baseX+4,baseY+96+halfMYY,"Disabled");        
    if global.smooth_camera draw_text(baseX+4,baseY+104+halfMYY,"Enabled"); else draw_text(baseX+4,baseY+104+halfMYY,"Disabled");        
    if global.vertical_sync draw_text(baseX+4,baseY+112+halfMYY,"Enabled"); else draw_text(baseX+4,baseY+112+halfMYY,"Disabled");        
    draw_set_halign(fa_center);    
    draw_text(baseX,baseY+120+halfMYY,"Back");
    draw_set_color(c_white);
