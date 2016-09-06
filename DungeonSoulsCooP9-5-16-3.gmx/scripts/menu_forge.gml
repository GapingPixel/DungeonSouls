/*else if (menu_part==2 && myy==-160)
{
    if (!instance_exists(obj_Forge_Effect))
    {
        if (arcane_forge_mode==1) //Default
        {
            if (key_right_pressed)
            {
                arcane_forge_char++;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            else if (key_left_pressed)
            {
                arcane_forge_char--;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            if (arcane_forge_char>9)
            {
                arcane_forge_char-=10;
            }
            else if (arcane_forge_char<0)
            {
                arcane_forge_char+=10;
            }
            
            if (key_down)
            {
                selected_recipe++;
                Play_Sound(snd_choose,1,.5,0,5000,true,false);
            }
            else if (key_up)
            {
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
    
    if (exit_key && !instance_exists(obj_Forge_Effect))
    {
        save_ingredients();
        save_forge_items();
        save_hero_weapons();
        save_recipes();
        Play_Sound(snd_choose,1,.5,0,5000,true,false);
        menu_yy = 0;             
        menu_part = 0;
    }
}
