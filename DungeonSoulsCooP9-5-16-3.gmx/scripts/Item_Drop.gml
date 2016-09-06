switch(ds_list_find_value(global.list_ind,ds_list_find_index(global.list,drag_item_image)))
{
    case 0:            
        with obj_Hero
            large_potion += 1;
        break;
    case 1:
        with obj_Hero
        {
            dam_bon[char] -= 2; //bonus damage
            Delete_Item()
        }
        break;
    case 2:
        with obj_Hero
        {
            dam_bon[char] -= 4; //bonus damage
            Delete_Item()                    
        }
        break;
    case 3:
        with obj_Hero
        {
            dam_bon[char] -= 2; //bonus damage
            if shock_chance > 10 shock_chance -= 10;
            Delete_Item()                    
        }
        break;
    case 4:
        with obj_Hero
        {
            dam_bon[char] -= 1; //bonus damage
            if life_steal > 2 life_steal -= 2;
            Delete_Item()
        }
        break;
    case 5:
        with obj_Hero
        {
            def_bon[char] -= 2; //bonus def
            Delete_Item()
        }
        break;
    case 6:
        with obj_Hero
        {
            def_bon[char] -= 1; //bonus def
            Delete_Item()
        }
        break;
    case 7:
        with obj_Hero
        {
            if wlk_spd[char] > (5/100)*5
                wlk_spd[char] -= (5/100); //walking speed; MAX = 5
            Delete_Item()
        }
        break;
    case 8:
        with obj_Hero
        {
            has_compass = false; 
            Delete_Item()
        }
        break;
    case 9:
        with obj_Hero
        {
            cooldown[char] = cooldown[char] + (5/100)*cooldown[char];
            cooldownB[char] = cooldownB[char] + (5/100)*cooldownB[char];
            Delete_Item()
        }
        break;
    case 12:
        with obj_Hero
        {
            hpmax[char] -= (50/100)*hpmax[char];
            Delete_Item()                            
        }
        break; 
    case 13:
        with obj_Hero
        {
            if knockback > 1
                knockback -= 1
            Delete_Item()                            
        }
        break; 
    case 15:
        var num = 0;
        repeat(ds_list_find_value(global.list_num,other.drag_item_id))
        {
            with instance_find(obj_Spikeball,num) instance_destroy();
            num += 1;
            Delete_Item();
        }
        break;                       
    case 16:
        with obj_Hero
        {
            crit_chance -= 30;
            acc_bon[char] -= 3;
            Delete_Item()                             
        }
        break; 
    case 17:
        with obj_Hero
        {
            if laser_chance > 10 laser_chance -= 20;
            Delete_Item()                            
        }
        break;
    case 20:
        with obj_Hero
        {
            meleedamage -= 2;
            Delete_Item()                            
        }
        break;
    case 24:
        with obj_Hero
        {
            dam_bon[char] -= 10; //bonus damage
            cooldown[char] = cooldown[char] - (40/100)*cooldown[char];
            cooldownB[char] = cooldownB[char] - (40/100)*cooldownB[char];
            cooldownC[char] = cooldownB[char] - (40/100)*cooldownC[char];
            Delete_Item()
        }
        break;
    case 27:
        with obj_Hero
        {
            dam_bon[char] -= 1; //bonus damage
            Delete_Item()
        }
        break; 
    case 28:
        with obj_Hero
        {
            hp_regen -= 1;
            regen_sec = 3;
            Delete_Item()
        }
        break;
    case 29:
        var num = 0;
        repeat(ds_list_find_value(global.list_num,other.drag_item_id))
        {    
            with instance_find(obj_Eye_Ball,num) instance_destroy();
            Delete_Item();
            num += 1;
        }
        break;
    case 30:
        with obj_Hero
        {
            accuracy[char] -= 4;
            burn_chance -= 5;
            Delete_Item()                             
        }
        break; 
    case 37:
        with obj_Hero
        {
            def_bon[char] -= 5
            Delete_Item()                            
        }
        break;  
    case 38:
        with obj_Hero
        {
            dam_bon[char] -= 5
            Delete_Item()                          
        }
        break;
    case 39:
        with obj_Hero
        {
            acc_bon[char] -= 5
            Delete_Item()                            
        }
        break;
    case 40:
        with obj_Hero
        {
            hpmax[char] -= 5;
            Delete_Item()                             
        }
        break;                                                                            
    case 41:
        with obj_Hero
        {
            if wlk_spd[char] < 5
                wlk_spd[char] += (5/100); //walking speed; MAX = 5            
            Delete_Item()                             
        }
        break;
        
    case 42:
        with obj_Hero
        {
            dam_bon[char] -= 10;
            hp_regen -= 5/10;
            Delete_Item();
        }
        break;
    case 43:
        with obj_Hero
        {
            crit_chance -= 10;
            if shock_chance > 0 shock_chance -= 10;
            Delete_Item();
        }
        break;
    case 44:
        with obj_Hero
        {
            slow_chance -= 10;
            if wlk_spd[char] > 5
                wlk_spd[char] -= (10/100); //walking speed; MAX = 5            
            Delete_Item();
        }
        break;        
    case 45:
        with obj_Hero
        {
            dam_bon[char] -= 5;
            if life_steal > 0 life_steal -= 5;
            Delete_Item();
        }      
        break;
    case 50:
        with obj_Hero
        {
            cooldown[char] = cooldown[char] + (20/100)*cooldown[char];
            cooldownB[char] = cooldownB[char] + (20/100)*cooldownB[char];
            cooldownC[char] = cooldownC[char] + (20/100)*cooldownC[char];            
            Delete_Item()
        }
        break;                
    default:
        with obj_Hero
        {
            Delete_Item()                             
        }
        break;                                                                                                          
}  
