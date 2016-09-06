switch(argument0)
{
    case "HEALTH POTION":
        Play_Sound(snd_potion,1,0.5,0,5000,true,false);
        add = hp + ((10+(10*ability_lvl[3]))*0.01)*hpmax[char]; 
        if hp > hpmax[char] hp = hpmax[char]
        else hp += ((10+(10*ability_lvl[3]))*0.01)*hpmax[char];
        hpb = hp;
        break;     
    case "POTION OF RETRIEVE":
        if Test_Chance(50)
        {
            PopupB("You regained health!",c_yellow);
            hp = hpmax[char];        
        }
        break;
    case "POTION OF RAGE":
        with obj_Hero
        {
            PopupB("Rage!",c_red);
            potion_color=c_red;
            obj             = instance_create(x,y,obj_St_Berserk)
            potion_obj=obj;
            obj.owner       = id;
            obj.pdamage     = 0;
            obj.sec         = 0;
            obj.alarm[1]    = 60*10;                    
        }
        break;
    case "POTION OF PENETRATION":
        with obj_Hero
        {
            PopupB("+50% critical chance",c_yellow);
            potion_color=c_yellow;
            obj             = instance_create(x,y,obj_St_Critical)
            potion_obj=obj;
            obj.owner       = id;
            obj.pdamage     = 0;
            obj.sec         = 0;
            obj.alarm[1]    = 60*15;        
            crit_chance += 50
        }
        break;        
    case "POTION OF RISK":
        with obj_Hero
        {
            if Test_Chance(50)
            {
                PopupB("+2 damage",c_yellow)
                potion_color=c_yellow;
                atk_dam[char] += 2
            }else
            {
                PopupB("-1 bonus damage",c_red);
                potion_color=c_red;
                if dam_bon[char] > 0
                    dam_bon[char] -= 1
                else
                if atk_dam[char] > 1
                    atk_dam[char] -= 1
            }
        }
    default:
        break;
        
                                             
}

/*
    case 0:
        PopupB("You regained health!",c_yellow);
        hp = hpmax[char];
        break;
    case 1:
        PopupB("Awww!!",c_red);
        hp = (20/100)*hp;
        break;
    case 2:
        Smoke(4,1,360,depth,0.1,merge_color(c_black,c_dkgray,0.5),4); 
        with instance_create(x,y,obj_Spawn) object = -1
        with instance_furthest(x,y,obj_Clearer)
        {
            other.x = x//+lengthdir_x(2,direc);
            other.y = y//+lengthdir_y(2,direc);
        }
            Play_Sound(snd_teleport,0.9,.5,0,5000,true,false);  
            with instance_create(x,y,obj_Spawn) object = -1         
        break;
    case 3:
        PopupB("Your attack increased!",c_yellow);
        atk_dam[char] += 2
        break;
    case 4:
        PopupB("You attack decreased!",c_red);
        if atk_dam[char] > 0 atk_dam[char] -= 2
        break; 
    case 5:
        PopupB("Max health increased!",c_yellow);
        hpmax[char] += 10;
        break;  
*/
