/*

 menu_yy = 0            
 in_menu = true;
    if key_pick
    {
        Play_Sound(snd_choose,1,.5,0,5000,true,false);    
        Save_Settings();
        menu_yy = 0;
        menu_part = 1;
    }


////////
//DRAW PART

draw_set_alpha(0.4);
    draw_rectangle(baseX-32,baseY+152-4+(menu_yy*8)+halfMYY,baseX+32,baseY+152+3+(menu_yy*8)+halfMYY,false)
    draw_set_alpha(1);  
    draw_set_color(c_white);  
    draw_set_halign(fa_right)
    draw_text(baseX-4,baseY+48+halfMYY,"Deaths:");
    draw_text(baseX-4,baseY+56+halfMYY,"Kills:");
    draw_text(baseX-4,baseY+64+halfMYY,"Boss Kill:");    
    draw_text(baseX-4,baseY+72+halfMYY,"Coins:");
    draw_text(baseX-4,baseY+80+halfMYY,"Item Collected:");
    draw_text(baseX-4,baseY+88+halfMYY,"Highest Level Reached:");    
    draw_set_halign(fa_left)
    draw_set_color(c_gray);
    draw_text(baseX+4,baseY+48+halfMYY,string(global.deaths));
    draw_text(baseX+4,baseY+56+halfMYY,string(global.en_kills));    
    draw_text(baseX+4,baseY+64+halfMYY,string(global.boss_kill));
    draw_text(baseX+4,baseY+72+halfMYY,string(floor(global.all_coin)));
    draw_text(baseX+4,baseY+80+halfMYY,string(floor(global.item_get)));    
    draw_text(baseX+4,baseY+88+halfMYY,string(global.highest_level)+" "+string(global.highest_loop));
    draw_set_halign(fa_center)        
    draw_set_color(c_white)
    draw_text(baseX,baseY+152+halfMYY,"Back")
