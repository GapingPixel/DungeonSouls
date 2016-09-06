gml_pragma("forceinline");
var keyR,keyL;
var o_str; //string_height() && string_width() have odd behaviours, therefore we duplicate the string.
keyL= max("["+Return_ContKey(ds_map_find_value(global.ckeys,'fskill'))+"]","LMB");
keyR=max("["+Return_ContKey(ds_map_find_value(global.ckeys,'askill'))+"]", "RMB");
/*keyL="LMB";
keyR="RMB";*/

if ( room == Game ) {

    var sx = view_xview+106;
    var sy = view_yview+222;  
    
    var sxx = view_xview+16;
    var syy = view_yview+view_hview-32;
    
    draw_set_alpha(1);
    draw_set_font(font0);
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
    //FIRST    
    ftext = "[c="+string(color[char])+"]"+sk_name[char]+"[/c]    [c="+string(DS_BLUE)+"]Tier "+string(ability_lvl[0])+"[/c] "+keyL+"#"+sk_desc[char];
    if (mouse_x > sx && mouse_x < sx+16) && (mouse_y > sy && mouse_y < sy+16)
    {
        draw_set_alpha(0.4);
        draw_set_color(c_black);
        o_str=string_copy(ftext,1,string_length(ftext));
        draw_rectangle(sxx,syy-6-(string_height(o_str)),sxx+string_width(o_str)+8,syy-4,false);
        draw_set_alpha(1);
        draw_set_color(c_white);
        draw_text_colortags(sxx+4,syy+4-(string_height(o_str)),ftext);
    }
    //SECOND
    if ( global.autocast ) {
       stext = "[c="+string(color[char])+"]"+sk_nameB[char]+"[/c]    [c="+string(DS_BLUE)+"]Tier "+string(ability_lvl[1])+"[/c] ["+Return_ContKey(ds_map_find_value(global.ckeys,'sskill'))+"]#"+sk_descB[char] or "[c="+string(color[char])+"]"+sk_nameB[char]+"[/c]    [c="+string(DS_BLUE)+"]Tier "+string(ability_lvl[1])+"[/c] ["+Return_Key(ds_map_find_value(global.keys,'sskill'))+"]#"+sk_descB[char];
       
    }  else {       
        stext = "[c="+string(color[char])+"]"+sk_nameB[char]+"[/c]    [c="+string(DS_BLUE)+"]Tier "+string(ability_lvl[1])+"[/c] "+keyR+"#"+sk_descB[char];    
    }
    if (mouse_x > sx+16 && mouse_x < sx+16+16) && (mouse_y > sy && mouse_y < sy+16) {
        draw_set_alpha(.4);
        draw_set_color(c_black);
        o_str=string_copy(stext,1,string_length(stext));
        draw_rectangle(sxx,syy-6-(string_height(o_str)),sxx+string_width(o_str)+8,syy-4,false);
        draw_set_alpha(1);    
        draw_set_color(c_white);
        draw_text_colortags(sxx+4,syy+4-(string_height(o_str)),stext);    
    }
    //THIRD
    if (global.autocast) {
        
            ttext = max( "[c="+string(color[char])+"]"+sk_nameC[char]+"[/c]    [c="+string(DS_BLUE)+"]Tier "+string(ability_lvl[2])+"[/c] ["+Return_ContKey(ds_map_find_value(global.ckeys,'tskill'))+"]#"+sk_descC[char] , "[c="+string(color[char])+"]"+sk_nameC[char]+"[/c]    [c="+string(DS_BLUE)+"]Tier "+string(ability_lvl[2])+"[/c] ["+Return_Key(ds_map_find_value(global.keys,'tskill'))+"]#"+sk_descC[char] );
            
    }
    else
        ttext = "[c="+string(color[char])+"]"+sk_nameC[char]+"[/c]    [c="+string(DS_BLUE)+"]Tier "+string(ability_lvl[2])+"[/c] "+keyR+"#"+sk_descC[char];
    if (mouse_x > sx+32 && mouse_x < sx+32+16) && (mouse_y > sy && mouse_y < sy+16)
    {
        draw_set_alpha(.4);
        draw_set_color(c_black);
        o_str=string_copy(ttext,1,string_length(ttext));
        draw_rectangle(sxx,syy-6-(string_height(o_str)),sxx+string_width(o_str)+8,syy-4,false);
        draw_set_alpha(1);    
        draw_set_color(c_white);
        draw_text_colortags(sxx+4,syy+4-(string_height(o_str)),ttext);    
    }
    //ACTIVE
    if ds_list_size(global.item_act)>0
    {
        ptext = ds_list_find_value(global.item_act_name,0)+" ["+Return_Key(ds_map_find_value(global.keys,'potion'))+"]#- "+ds_list_find_value(global.item_act_desc,0);//- +"+string(10+(10*ability_lvl[3]))+"% hp#";
        if (mouse_x > sx+48 && mouse_x < sx+48+16) && (mouse_y > view_yview+240-20 && mouse_y < view_yview+240-20+16)
        {
            draw_set_alpha(0.4);
            draw_set_color(c_black);
            draw_rectangle(sxx,syy-32,sxx+string_width(ptext)+8,syy-4,false);
            draw_set_alpha(1);    
            draw_set_color(c_white);
            draw_text(sxx+4,syy-8+4,ptext);    
        }
    }
    //POTION
    if ds_list_size(global.potionA)>0 {
        ptext = ds_list_find_value(global.potion_nameA,0)+" [ 1 ]#- "+ds_list_find_value(global.potion_descA,0);//- +"+string(10+(10*ability_lvl[3]))+"% hp#";
        if (mouse_x > sx+64 && mouse_x < sx+64+16) && (mouse_y > view_yview+240-20 && mouse_y < view_yview+240-20+16) {
            draw_set_alpha(0.4);
            draw_set_color(c_black);
            draw_rectangle(sxx,syy-32,sxx+string_width(ptext)+8,syy-4,false);
            draw_set_alpha(1);    
            draw_set_color(c_white);
            draw_text(sxx+4,syy-8+4,ptext);    
        }
    } 
    if ds_list_size(global.potionB)>0
    {
        ptext = ds_list_find_value(global.potion_nameB,0)+" [ 2 ]#- "+ds_list_find_value(global.potion_descB,0);//- +"+string(10+(10*ability_lvl[3]))+"% hp#";
        if (mouse_x > sx+80 && mouse_x < sx+80+16) && (mouse_y > view_yview+240-20 && mouse_y < view_yview+240-20+16)
        {
            draw_set_alpha(0.4);
            draw_set_color(c_black);
            draw_rectangle(sxx,syy-32,sxx+string_width(ptext)+8,syy-4,false);
            draw_set_alpha(1);    
            draw_set_color(c_white);
            draw_text(sxx+4,syy-8+4,ptext);    
        }
    } 
    if ds_list_size(global.potionC)>0
    {
        ptext = ds_list_find_value(global.potion_nameC,0)+" [ 3 ]#- "+ds_list_find_value(global.potion_descC,0);//- +"+string(10+(10*ability_lvl[3]))+"% hp#";
        if (mouse_x > sx+96 && mouse_x < sx+96+16) && (mouse_y > view_yview+240-20 && mouse_y < view_yview+240-20+16)
        {
            draw_set_alpha(0.4);
            draw_set_color(c_black);
            draw_rectangle(sxx,syy-32,sxx+string_width(ptext)+8,syy-4,false);
            draw_set_alpha(1);    
            draw_set_color(c_white);
            draw_text(sxx+4,syy-8+4,ptext);    
        }
    }            
    draw_set_valign(false);    
    draw_set_halign(false);
}else
if room == Char_Select
{
    if choice != -1 && !instance_exists(obj_Char_Select_Soul)
    {         
        var sx = view_xview+(view_wview/2)-128;
        var sy = view_yview+(view_hview/2)-32;
        
        draw_set_alpha(1);
        draw_set_font(font0);
        draw_set_halign(fa_left);
        
        //FIRST
        ftext = "[c="+string(color[choice])+"]"+sk_name[choice]+"[/c] "+keyL+"#"+sk_desc[choice];
        if (mouse_x > sx && mouse_x < sx+16) && (mouse_y > sy && mouse_y < sy+16) {
            draw_set_alpha(1);
            draw_set_color(c_black);
            draw_rectangle(view_xview,view_yview,view_xview+view_wview,view_yview+80,false);        
            draw_sprite_pos(ability_frame[choice],0,
            sx,       sy-48,
            sx+64,    sy-48,
            sx+64,    sy-48+32,
            sx,       sy-48+32,1
            );
            draw_sprite_ext(spr_Ability_Frame_Border,0,sx,sy-48,1,1,0,color[choice],1);
            draw_set_alpha(1);
            draw_set_color(c_white);
            o_str=string_copy(ftext,1,string_length(ftext));
            draw_text_colortags(sx+64+4,sy-32+8-string_height(o_str),ftext);
        }
        //SECOND
        stext = "[c="+string(color[choice])+"]"+sk_nameB[choice]+"[/c] ["+Return_ContKey(ds_map_find_value(global.ckeys,'sskill'))+"]#"+sk_descB[choice];
        stext = "[c="+string(color[choice])+"]"+sk_nameB[choice]+"[/c] ["+Return_Key(ds_map_find_value(global.keys,'sskill'))+"]#"+sk_descB[choice];
        
        if (mouse_x > sx && mouse_x < sx+16) && (mouse_y > sy+16 && mouse_y < sy+16+16) {
            draw_set_alpha(1);
            draw_set_color(c_black);
            draw_rectangle(view_xview,view_yview,view_xview+view_wview,view_yview+80,false);        
            draw_sprite_pos(ability_frame[choice],1,
            sx,       sy-48,
            sx+64,    sy-48,
            sx+64,    sy-48+32,
            sx,       sy-48+32,1
            );
            draw_sprite_ext(spr_Ability_Frame_Border,0,sx,sy-48,1,1,0,color[choice],1);
            draw_set_alpha(1);    
            draw_set_color(c_white);
            o_str=string_copy(stext,1,string_length(stext));
            draw_text_colortags(sx+64+4,sy-32+8-string_height(o_str),stext);    
        }
        //THIRD
        ttext = "[c="+string(color[choice])+"]"+sk_nameC[choice]+"[/c] ["+Return_ContKey(ds_map_find_value(global.ckeys,'tskill'))+"]#"+sk_descC[choice];
        ttext = "[c="+string(color[choice])+"]"+sk_nameC[choice]+"[/c] ["+Return_Key(ds_map_find_value(global.keys,'tskill'))+"]#"+sk_descC[choice];
        
        if (mouse_x > sx && mouse_x < sx+16) && (mouse_y > sy+32 && mouse_y < sy+32+16) {
            draw_set_alpha(1);
            draw_set_color(c_black);
            draw_rectangle(view_xview,view_yview,view_xview+view_wview,view_yview+80,false);        
            draw_sprite_pos(ability_frame[choice],2,
            sx,       sy-48,
            sx+64,    sy-48,
            sx+64,    sy-48+32,
            sx,       sy-48+32,1
            );
            draw_sprite_ext(spr_Ability_Frame_Border,0,sx,sy-48,1,1,0,color[choice],1);
            draw_set_alpha(1);    
            draw_set_color(c_white);
            o_str=string_copy(ttext,1,string_length(ttext));
            draw_text_colortags(sx+64+4,sy-32+8-string_height(o_str),ttext);    
        }
        draw_set_halign(false);
    }
}
