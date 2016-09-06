gml_pragma("forceinline");
if ds_list_size(global.item_act) > 0
{
    switch(ds_list_find_value(global.item_act_name,0))
    {
        case "ASSASSIN'S BLADE":
            //RESET COOLDOWN
            with obj_Hero
            {
                alarm[0] = -1;
                alarm[1] = -1;
                alarm[5] = -1;
            }        
            break;
        case "ROCKET":
            with obj_Hero
            {
                Create_Projectile(x,y,obj_Rocket_P,team,1,crit_chance,2.5*atk_dam[char],2.5*dam_bon[char],0,0,knockback,angle,accuracy[char],acc_bon[char],false)
                Create_Projectile(x,y,obj_Rocket_P,team,1,crit_chance,2.5*atk_dam[char],2.5*dam_bon[char],0,0,knockback,angle,accuracy[char],acc_bon[char],false)
                Create_Projectile(x,y,obj_Rocket_P,team,1,crit_chance,2.5*atk_dam[char],2.5*dam_bon[char],0,0,knockback,angle,accuracy[char],acc_bon[char],false)
            }
            break;
        case "BERSERKER'S RING":
            with obj_Hero
            {
                obj             = instance_create(x,y,obj_St_Berserk)
                obj.owner       = id;
                obj.pdamage     = 0;
                obj.sec         = 0;
                obj.alarm[1]    = 60*5;
            }
            break;
        case "POISON MUSHROOM":
            with obj_Hero
                Create_Projectile(x,y,obj_Poison_Mushroom_Bomb,team,0,0,1,1,mag_dam[char],mag_bon[char],0,0,99,0,false)        
            break;
        case "BUTTERFLY WING":  
            with obj_Hero
            {
                Create_Projectile(x,y,obj_Whirlwind,team,4,crit_chance,5+(20/100)*atk_dam[char],5+(20/100)*atk_dam[char],mag_dam[char],mag_bon[char],knockback,0,99,0,false)
                Create_Projectile(x,y,obj_Whirlwind,team,4,crit_chance,5+(20/100)*atk_dam[char],5+(20/100)*atk_dam[char],mag_dam[char],mag_bon[char],knockback,90,99,0,false)
                Create_Projectile(x,y,obj_Whirlwind,team,4,crit_chance,5+(20/100)*atk_dam[char],5+(20/100)*atk_dam[char],mag_dam[char],mag_bon[char],knockback,180,99,0,false)
                Create_Projectile(x,y,obj_Whirlwind,team,4,crit_chance,5+(20/100)*atk_dam[char],5+(20/100)*atk_dam[char],mag_dam[char],mag_bon[char],knockback,270,99,0,false)
            }
            break;
        case "LOCKPICK":
            if Test_Chance(25)
                with obj_Chest
                    instance_destroy(); 
            else
                PopupB("Failed!",DS_RED);
            break;
        case "COMMON SCEPTER":
            with obj_Hero
            {
                Create_Projectile(x,y,obj_Laser_Beam,team,1,crit_chance,0,0,10+((10/100)*mag_dam[char]),mag_bon[char],knockback,angle-30,99,0,false)
                Create_Projectile(x,y,obj_Laser_Beam,team,1,crit_chance,0,0,10+((10/100)*mag_dam[char]),mag_bon[char],knockback,angle,99,0,false)
                Create_Projectile(x,y,obj_Laser_Beam,team,1,crit_chance,0,0,10+((10/100)*mag_dam[char]),mag_bon[char],knockback,angle+30,99,0,false)
            }
            break;
        case "BLOOD SCEPTER":
            with obj_Enemy
            {
                with obj_Hero
                    hp += (0.05)*other.maxhp;            
                    hp -= (0.05)*maxhp;
            }
            break;
        case "BANE SCEPTER":
            with obj_Hero
            {
                stat_pnt += 3;
                skill_pnt +=2;
                hpmax[char] -= (0.25)*hpmax[char];
            }
            break;
        default:
            break;
    
    }
}
