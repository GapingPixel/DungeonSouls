///scr_arcane_forge
/*
gml_pragma("forceinline");
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

    ////////EXITT
    
    
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
    
 /// KEY CHANGE  
    
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
