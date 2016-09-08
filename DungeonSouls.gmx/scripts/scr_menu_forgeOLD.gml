///scr_menu_forge
gml_pragma("forceinline");
if (back[GAMEPAD_1] || back[GAMEPAD_2] || back[KEYBOARD] && (!instance_exists(obj_Forge_Effect)) ) {
    menu_index = MENU_MAIN;
    option = 3; //audio_play_sound(snd_accept,1,0);
    save_ingredients();
    save_forge_items();
    save_hero_weapons();
    save_recipes();
    Play_Sound(snd_choose,1,.5,0,5000,true,false);
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
    if (arcane_forge_mode==1) /*/Default */ {
            if (key_right_pressed) {
                arcane_forge_char++;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            else if (key_left_pressed) {
                arcane_forge_char--;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            if (arcane_forge_char>9) {
                arcane_forge_char-=10;
            }
            else if (arcane_forge_char<0) {
                arcane_forge_char+=10;
            }
            
            if (key_down) {
                selected_recipe++;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            else if (key_up) {
                selected_recipe--;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            if (selected_recipe>=global.number_recipes)
            {
                selected_recipe=global.number_recipes-1;
            }
            else if (selected_recipe<0)
            {
                selected_recipe=0;
            }
        }
        else if (arcane_forge_mode==0) //Weapon Inventory
        {
            var max_lines = max(global.forge_item_amount,9);
            if (key_right_pressed)
            {
                arcane_forge_item_slot++;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            else if (key_left_pressed)
            {
                arcane_forge_item_slot--;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            else if (key_up)
            {
                arcane_forge_item_slot-=3;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            else if (key_down)
            {
                arcane_forge_item_slot+=3;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            if (arcane_forge_item_slot>=max_lines)
            {
                arcane_forge_item_slot=max_lines-1;
            }
            else if (arcane_forge_item_slot<0)
            {
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




