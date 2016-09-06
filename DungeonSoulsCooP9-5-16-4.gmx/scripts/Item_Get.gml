///Item_Get()
/*
    Return - True if successfully added.
*/
Play_Sound(snd_acquire,1,0.5,0,5000,true,false);
result=true;
item_not_repeated=true;
switch(item_num)
{
    case 0:            
        with other
        {
            other.result=Add_Item();            
        }
        break;      
    case 1:
        with other
        {
            if Item_In_List(spr_Hammer)
            {
                other.item_not_repeated=Add_Item()
                if (other.item_not_repeated)
                {
                    dam_bon[char] += (Item_Value(spr_Hammer)+1);
                }
            }
            else
            {
                dam_bon[char] += 1; //bonus damage
                stun_chance += 5;
                other.result=Add_Item()
            }
        }
        break;
    case 2:
        with other
        {
            if Item_In_List(spr_Rusty_Sword)
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    dam_bon[char] += +1; //bonus damage
                }
            }
            else
            {
                other.result=Add_Item()
                dam_bon[char] += 5; //bonus damage
            }              
        }
        break;
    case 3:
        with other
        {
            if !Item_In_List(spr_Electric_Dagger)
            {
                dam_bon[char] += 2; //bonus damage
                if shock_chance < 100  
                    shock_chance += 10;                
                Add_Item()
            }            
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;      
    case 4:
        with other
        {
            if Item_In_List(spr_Blood_Dagger)
            {                
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    if life_steal < 100 life_steal += 2; else life_steal = 100
                }
            }
            else
            {
                dam_bon[char] += 3; //bonus damage
                if life_steal < 100 life_steal += 2; else life_steal = 100
                other.result=Add_Item();
            }
        }
        break;
    case 5:
        with other
        {
            if Item_In_List(spr_Shield)
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    def_bon[char] += (Item_Value(spr_Shield)+1);
                }
            }
            else
            {
                other.result=Add_Item();
                def_bon[char] += 3; //bonus def
            }
        }
        break;
    case 6:
        with other
        {
            if Item_In_List(spr_Cloth)
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                def_bon[char] += (Item_Value(spr_Cloth)+1); //bonus def
            }
            else
            {
                def_bon[char] += 1; //bonus def
                other.result=Add_Item();
            }
        }
        break;
    case 7:
        with other
        {
            if Item_In_List(spr_Shoe)            
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    if wlk_spd[char] < 3 then wlk_spd[char] += (((Item_Value(spr_Shoe)+1)*2))/100; //walking speed; MAX = 5
                }
            }
            else
            {
                other.result=Add_Item();
                if wlk_spd[char] < 3 then wlk_spd[char] += 5/100; //walking speed; MAX = 5                
            }
        }
        break;
    case 8:
        with other
        {
            if !Item_In_List(spr_Compass)
            {
                has_compass = true; 
                other.result=Add_Item()
            }
            else if (Item_Value(spr_Compass)<2)
            {
                other.result=Add_Item();
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 9:
        with other
        {        
            if !Item_In_List(spr_Book_of_CD)
            {                
                cooldown[char] -= (10/100)*cooldown[char]
                cooldownB[char] -= (10/100)*cooldownB[char]
                cooldownC[char] -= (10/100)*cooldownC[char]
                other.result=Add_Item()
            }
            else
            {
                if (10+((Item_Value(spr_Book_of_CD)+1))) < 50
                {
                    cooldown[char] -= (((Item_Value(spr_Book_of_CD)+1)+10)/100)*cooldown[char];
                    cooldownB[char] -= (((Item_Value(spr_Book_of_CD)+1)+10)/100)*cooldown[char];
                    cooldownC[char] -= (((Item_Value(spr_Book_of_CD)+1)+10)/100)*cooldown[char];
                    other.item_not_repeated=Add_Item()
                }
                else
                {
                    other.item_not_repeated=false;
                }
            }            
        }
        break;
    case 12:
        with other
        {
            if !Item_In_List(spr_Blood_Stone)
            {
                hpmax[char] += (30/100)*hpmax[char];
                Add_Item();
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break; 
    case 13:
        with other
        {
            other.item_not_repeated=Add_Item()                            
            if (other.item_not_repeated)
            {
                if knockback < 10
                    knockback += 3;
            }
        }
        break; 
    case 14:
        with other
        {
                other.item_not_repeated=Add_Item();
        }
        break;
    case 15:
        with other
        {            
            if Item_In_List(spr_Spike_Ball)
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    with obj_Spikeball
                        damage += 2*(Item_Value(spr_Spike_Ball)+1);
                }
            }else
            {        
                obj = instance_create(x,y,obj_Spikeball);
                obj.creator = id;
                obj.team = team;
                obj.persistent = true;
                obj.damage = 2;
                obj.magic = 0;
                other.result=Add_Item();
            }
        }
        break;                       
    case 16:
        with other
        {       
            if !Item_In_List(spr_Death_Bow)
            {
                Add_Item()
                if crit_chance > 100
                    crit_chance = 100
                else
                    crit_chance += 30;
                acc_bon[char] += 3;
            }  
            else
            {
                other.item_not_repeated=false;
            }              
        }
        break; 
    case 17:
        with other
        {
            if !Item_In_List(spr_Laser_Staff)
            {
                laser_chance += 20;
                mag_dam[char] += 5;
                Add_Item()                            
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 20:
        with other
        {
            other.item_not_repeated=Add_Item();
        }
        break;
    case 23:
        with other
        {
            if Item_In_List(spr_Detonator)
            {
                if (Item_Value(spr_Detonator)+1)<30
                    other.item_not_repeated=Add_Item();
            }else
            {
                Add_Item();
            }
        }
        break;
    case 24:
        with other
        {
            if !Item_In_List(spr_Broad_Sword)
            {
                dam_bon[char] += 10; //bonus damage
                cooldown[char] += (15/100)*cooldown[char];
                cooldownB[char] += (15/100)*cooldownB[char];
                cooldownC[char] += (15/100)*cooldownC[char];                
                Add_Item()
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 27:
        with other
        {
            if Item_In_List(spr_Club)
            {                
                other.item_not_repeated=Add_Item()
                if (other.item_not_repeated)
                {
                    dam_bon[char] += ((Item_Value(spr_Club)+1)*1); //bonus damage
                }
            }else
            {
                dam_bon[char] += 1;
                Add_Item();
            }
        }
        break; 
    case 28:
        with other
        {   
            if !Item_In_List(spr_Herb)
            {
                hp_regen += 3/5;
                other.result=Add_Item();
            }
            else
            {         
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                    hp_regen += (((Item_Value(spr_Herb)+1)*2))/3;
            }
        }
        break;
    case 29:
        with other
        {
            if !Item_In_List(spr_Eyeball)
            {
                obj = instance_create(x,y,obj_Eye_Ball);
                obj.creator = id;
                obj.team = team;
                obj.persistent = true;
                Add_Item();
            }
            else
            {
                other.item_not_repeated=Add_Item();
            }
        }
        break;
    case 30:
        with other
        {
            if !Item_In_List(spr_Magnifying_Glass)
            {
                if (accuracy[char]+acc_bon[char])+10 < 100
                    accuracy[char] += 10;
                else
                    accuracy[char] = 100;
                burn_chance += 10;
                Add_Item()       
            }
            else
            {
                other.item_not_repeated=false;
            }                      
        }
        break; 
        ////
    case 31:
        with other
        {
            if !Item_In_List(spr_Pickaxe)
            {
                dam_bon[char] += 12;
                if crit_chance+10 < 100
                    crit_chance += 10;
                else
                    crit_chance = 100                    
                Add_Item();
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 32:
        with other
        {
            other.item_not_repeated=Add_Item();
        }
        break;
    case 33:
        with other
        {
            if !Item_In_List(spr_Beating_Brain)
            {
                Add_Item();
            }
            else
            {
                other.item_not_repeated=false;
            }
        }   
        break;       
    case 37:
        with other
        {
            if Item_In_List(spr_Book_of_WR)
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                def_bon[char] += (((Item_Value(spr_Book_of_WR)+1)*2))
            }
            else
            {
                def_bon[char] += 5
                other.result=Add_Item();
            }
        }
        break;
    case 38:
        with other
        {
            if Item_In_List(spr_Book_of_BR)
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                dam_bon[char] += (((Item_Value(spr_Book_of_BR)+1)*2))
            }
            else
            {
                dam_bon[char] += 5
                other.result=Add_Item();
            }
        }
        break;
    case 39:
        with other
        {
            if Item_In_List(spr_Book_of_AR)
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    if (accuracy[char]+acc_bon[char])+((Item_Value(spr_Book_of_AR)+1)) < 100
                        acc_bon[char] += ((Item_Value(spr_Book_of_AR)+1))
                }
            }else
            {
                if accuracy[char]+acc_bon[char] < 100
                    acc_bon[char] += 2           
                other.result=Add_Item();
            }
        }
        break;
    case 40:
        with other
        {
            if Item_In_List(spr_Book_of_HL)
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                hpmax[char] += (((Item_Value(spr_Book_of_HL)+2)));
            }
            else
            {
                hpmax[char] += 5;
                other.result=Add_Item();
            }
        }
        break;        
    case 41:
        with other
        {
            if Item_In_List(spr_Book_of_TH)
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    if wlk_spd[char]+(((Item_Value(spr_Book_of_TH)+1)*0.05)) < 3
                        wlk_spd[char] += (0.10+((Item_Value(spr_Book_of_TH)+1)*0.05));
                }
            }
            else
            {
                if wlk_spd[char] < 3
                    wlk_spd[char] += 0.10;
                other.result=Add_Item();
            }
        }
        break;
    case 42:
        with other
        {
            if !Item_In_List(spr_Sword_of_Regen)
            {
                dam_bon[char] += 10;
                hp_regen += 5/10;
                Add_Item();
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 43:
        with other
        {
            if !Item_In_List(spr_Sword_of_Energy)
            {
                if crit_chance > 100
                    crit_chance = 100
                else
                    crit_chance += 15;
                    
                if shock_chance < 100 
                    shock_chance += 10;
                else
                    shock_chance = 100;
                Add_Item();
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 44:
        with other
        {
            if !Item_In_List(spr_Sword_of_Ice)
            {
                slow_chance += 10;
                if wlk_spd[char]+(10/100) < 5
                    wlk_spd[char] += (10/100);
                Add_Item();
            }  
            else
            {
                other.item_not_repeated=false;
            }          
        }
        break;        
    case 45:
        with other
        {
            if !Item_In_List(spr_Blood_Sword)
            {
                dam_bon[char] += 12;
                if life_steal < 100 
                    life_steal += 5;
                Add_Item();
            }else
            {
                other.item_not_repeated=false;
            }
        }      
        break;
    case 46:
        with other
        {
            other.result=Add_Item();
        }
        break; 
    case 49:
        with other
        {
            other.item_not_repeated=Add_Item();
        }
        if global.difficulty != EASY and unlocked[9] == 0
        {
            unlocked[9] = 1
            rank[9] = 0;
            add_notification(spr_Frame,9,"Engineer unlocked!",3);
            Save_Stats();
        }      
    break;
    case 50:
        with other
        {
            if !Item_In_List(spr_Merlin_Hat)
            {
                if global.difficulty != EASY and unlocked[4] == 0
                {
                    unlocked[4] = 1
                    rank[4] = 0;
                    add_notification(spr_Frame,4,"Wizard unlocked!",3);
                    Save_Stats();
                }            
                cooldown[char] -= (35/100)*cooldown[char]
                cooldownB[char] -= (35/100)*cooldownB[char]
                cooldownC[char] -= (35/100)*cooldownC[char]
                mresist[char] += 10;
                Add_Item();
            }     
            else
            {
                other.item_not_repeated=false;
            }       
        }
        break;
    case 52:
        with other
        {
            if !Item_In_List(spr_Magma_Worm_Tail)
            Add_Item();        
            else
            {
                item_not_repeated=false;
            }
        }
        break;
    case 53:
        with other
        {
            if !Item_In_List(spr_Molotov)
            {
                Add_Item();        
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;        
    case 54:            
        with other
            silver_key += 1;
        break;
    case 55:            
        with other
            golden_key += 1;
        break;
    case 56:
        with other
        {
            if !Item_In_List(spr_Vanguard)
            {
                obj = instance_create(x,y,obj_Vanguard_Rotate);
                obj.creator = id;
                obj.team = team;
                obj.persistent = true;
                obj.dir = 90;
                
                obj = instance_create(x,y,obj_Vanguard_Rotate);
                obj.creator = id;
                obj.team = team;
                obj.persistent = true;
                obj.dir = 225;
                
                obj = instance_create(x,y,obj_Vanguard_Rotate);
                obj.creator = id;
                obj.team = team;
                obj.persistent = true;
                obj.dir = 315;                                
                other.result=Add_Item();
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break; 
    case 57:
        with other
        {
            if !Item_In_List(spr_Footfinger)
            Add_Item();  
            else
            {
                other.item_not_repeated=false;
            }      
        }
        break;    
    case 58:
        with other
        {
            if !Item_In_List(spr_Berserker_Ring)
            Add_Item(); 
            else
            {
                other.item_not_repeated=false;
            }       
        }
        break;
    case 59:
        with other
        {
            if !Item_In_List(spr_Poison_Mushroom)
            Add_Item();  
            else
            {
                other.item_not_repeated=false;
            }      
        }
        break;
    case 60:
        with other
        {
            if !Item_In_List(spr_Butterfly_Wing)
                Add_Item();  
            else
            {
                other.item_not_repeated=false;
            }      
        }
        break;                        
    case 61:
        global.soul_orb += 1;
        break;
    case 62:
        with other
        {
            other.result=Add_Item();
        }
        break;        
    case 63:
        with other
        { 
            if !Item_In_List(spr_King_Crown)
            {
                hpmax[char] += (20/100)*hpmax[char];
                dam_bon[char] += 20;
                def_bon[char] += 20;
                Add_Item()
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 64:
        with obj_Item
        {
            if !Item_In_List(spr_Price_Tag)
            {
                if item_price > 0
                    item_price -= (10/100)*item_price;
            }
        }
        with other
            other.item_not_repeated=Add_Item();
        break;
    case 65:
        with other
        {
            if !Item_In_List(spr_Treasure_Box)
                Add_Item();     
            else
            {
                other.item_not_repeated=false;
            }       
        }                
        break; 
    case 66:
        with other
        {
            if !Item_In_List(spr_Skull)
                Add_Item();     
            else
            {
                other.item_not_repeated=false;
            }       
        }                
        break;
    case 67:
        with other
        {
            if !Item_In_List(spr_Venom)
                Add_Item();      
            else
            {
                other.item_not_repeated=false;
            }     
        }                
        break;
    case 68:
        with other
        {
            if !Item_In_List(spr_Blood_Foot)
                Add_Item();   
            else
            {
                other.item_not_repeated=false;
            }         
        }                
        break;       
    case 69:
        with other
        {
            if !Item_In_List(spr_Battery)
                Add_Item();        
            else
            {
                other.item_not_repeated=false;
            }    
        }                
        break;
    case 70:
        with obj_Enemy
        {
            if !Item_In_List(spr_Crucifix)
            {
                //CRUCIFIX
                if ds_list_find_index(global.list,spr_Crucifix) != -1 
                {
                    hp -= (10/100)*maxhp
                }
            }
        }
        with other
            other.item_not_repeated=Add_Item();
        break;
    case 71:
        with other
        {
            other.result=Add_Item();
        }
        break;        
    case 72:
        with other
        {
            if !Item_In_List(spr_Turtle_Shell)
                Add_Item();           
            else
            {
                other.item_not_repeated=false;
            } 
        }                
        break;
    case 73:
        with other
        {
            if !Item_In_List(spr_Iron_Shield)
            {
                def_bon[char] += 15;
                stun_chance += 10;
                Add_Item();          
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
    break;
    case 74:
        with other
        {
            other.result=Add_Item();
        }
        break;
    case 75:
        with other
        {
            if Item_In_List(spr_Broken_Katana)
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    crit_dam += ((Item_Value(spr_Broken_Katana)+1)*5)
                }
            }else
            {
                crit_dam += 30;
                other.result=Add_Item();
            }
        }
        break;
    case 76:
        with other
        {
            silver_key += 2;
            golden_key += 2;
            Add_Item();
        }
        break;
    case 77:
        with other
        {
            if !Item_In_List(spr_Empty_Bottle)
                Add_Item();
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 78:
        with other
        {
            global.coin_col += 999;
            global.coin_ctr = 120;
            if !Item_In_List(spr_Coin_Purse)
                Add_Item();
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 79:
        with other
        {
            if !Item_In_List(spr_Fish_Meat)
            {
                hpmax[char] += 10;
                def_bon[char] += 1;
                Add_Item();
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 80:
        with other
        {
            if !Item_In_List(spr_Lockpick)
                Add_Item();
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 81:
        with other
        {
           if !Item_In_List(spr_Cooking_Knife)
           {
                crit_chance += 2;
                Add_Item(); 
           }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 82:
        with other
        {
            if !Item_In_List(spr_Devil_Hoof)
            {
                stun_chance += 10;
                Add_Item();
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 83:
        with other
        {
            if !Item_In_List(spr_Green_Meat_Cube)
            {
                hpmax[char] -= (10/100)*hpmax[char];
                defense[char] += 5;
                Add_Item();
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 84:
        with other
        {
            if !Item_In_List(spr_Guardian_Armor)
            {
                defense[char] += 10;
                mresist[char] += 10;
                hpmax[char] += 5;
                Add_Item();
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 85:
        with other
        {
            if !Item_In_List(spr_Red_Scarf)
                Add_Item();
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 86:
        with other
        {
            if !Item_In_List(spr_Fresh_Garlic)
            {
                mresist[char] += 5;
                Add_Item();
            }else
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    mresist[char] +=( Item_Value(spr_Fresh_Garlic)+1)
                }
            }
        }
        break;
    case 87:
        with other
        {
            if !Item_In_List(spr_Magic_Stick)
            {
                mag_dam[char] += 5;
                Add_Item();
            }else
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    mag_dam[char] +=( Item_Value(spr_Magic_Stick)+1)
                }
            }
        }
        break;
    case 88:
        with other
        {
            if !Item_In_List(spr_Goat_Horn)
            {
                Add_Item();
            }
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 89:
        with other
        {
            if !Item_In_List(spr_Yellow_Scepter)
                Add_Item();      
            else
            {
                other.item_not_repeated=false;
            }  
        }
        break;    
    case 90:
        with other
        {
            if !Item_In_List(spr_Red_Scepter)
                Add_Item();    
            else
            {
                other.item_not_repeated=false;
            }    
        }
        break;
    case 91:
        with other
        {
            if !Item_In_List(spr_Purple_Scepter)
                Add_Item();     
            else
            {
                other.item_not_repeated=false;
            }   
        }
        break;
    case 92:
        with other
        {
            if !Item_In_List(spr_Forgotten_Staff)
            {
                mag_dam[char] += 8;
                atk_dam[char] += 2;
                Add_Item();
            }else
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    mag_dam[char] +=( Item_Value(spr_Forgotten_Staff)+1)
                }
            }
        }
        break;
    case 93:
        with other
        {
            if !Item_In_List(spr_Magical_Scroll)
            {
                mag_dam[char] += 2;
                Add_Item();
            }else
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    mag_dam[char] +=( Item_Value(spr_Magical_Scroll)+1)
                }
            }        
        } 
        break;
    case 94:
        with other
        {
            if !Item_In_List(spr_Traveler_Cloak)
            {
                mresist[char] += 5;
                if wlk_spd[char] < 3 then wlk_spd[char] += 1/100; //walking speed; MAX = 5
                Add_Item();
            }else
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    mresist[char] +=( Item_Value(spr_Traveler_Cloak)+1)
                }
            }        
        }
        break;
    case 95:
        with other
        {
            if !Item_In_List(spr_Scepter_of_Power)
            {
                atk_dam[char]*=2;
                mag_dam[char]*=2;
                hpmax[char]*=0.5;
                Add_Item();
            }     
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 96:
        with other
        {
            if !Item_In_List(spr_Amplifying_Tome)
            {
                Add_Item();
            }     
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 97:
        with other
        {
            if !Item_In_List(spr_Angel_Feather)
            {
                if (Item_Value(spr_Angel_Feather)<other.item_stack[97])
                {
                    Add_Item();
                }
            }     
            else
            {
                other.item_not_repeated=Add_Item();
            }
        }
        break;
    case 98:
        with other
        {
            if !Item_In_List(spr_Vital_Armor)
            {
                Add_Item();
            }     
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 100:
        with other
        {
            if !Item_In_List(spr_Shoes_of_Haste)
            {
                Add_Item();
                with (obj_Mark)
                {
                    if (alarm[2]>0)
                    {
                        alarm[2]=2;
                    }
                }
            }     
            else
            {
                other.item_not_repeated=false;
            }
        }
        break;
    case 99:
        with other
        {
            if (!Item_In_List(spr_Northern_Hat))
            {
                Add_Item();
                defense[char]+=3;
            }
            else if (Item_Value(spr_Northern_Hat)<other.item_stack[99])
            {
                other.item_not_repeated=Add_Item();
                if (other.item_not_repeated)
                {
                    defense[char]+=4;
                }
            }
        }
        break;
    case 102:
        add_recipe(recipe_index);
        result=true;
        item_not_repeated=true;
        break;
    case 103:
        with other
        {
            other.item_not_repeated=Add_Item();
            if (other.item_not_repeated)
            {
                if (instance_exists(obj_Merchant))
                {
                    with (obj_Merchant)
                    {
                        item_count++;
                    }
                }
            }
        }
        break;  
    case 107:
        with other
        {
            if wlk_spd[char] < 3
            {
                wlk_spd[char] += 0.05*wlk_spd[char];
            }
            other.item_not_repeated=Add_Item();
        }
        break;    
    default:
        with other
        {
            other.item_not_repeated=Add_Item();
        }
        break;                                                                                                          
}

//POPUP
if (result && item_not_repeated)
{
    PopupB("Item Acquired!",c_yellow);
    instance_destroy();
}
if (!item_not_repeated)
{
    if (random(1)<0.6)
    {
        var ing_type = get_random_ingredient();
        var ing__amount=irandom_range(10,20);
        add_ingredient(ing_type,ing__amount);
        PopupB(item_name[item_num]+" turned into "+string(ing__amount)+"x"+get_ingredient_name(ing_type)+"!",c_aqua);
    }
    else
    {
        if (random(1)<0.5)
        {
            PopupB(item_name[item_num]+" turned into gold!",c_yellow);
            var radius=40;
            var points = 8;
            var offsetAngle = 360/points;
            var angle;
            for (var i=0;i<points;i++)
            {
                angle = i*offsetAngle;
                ob=instance_create(x+radius*cos(angle),y-radius*sin(angle),choose(obj_Coin,obj_Diamond));
                ob.value=ceil(price_range[item_num]*random_range(1,2)*(global.level*0.3)/points);
            }
        }
        else
        {
            PopupB(item_name[item_num]+" turned into experience!",c_purple);
            var radius=64;
            var points = 8;
            var offsetAngle = 360/points;
            var angle;
            for (var i=0;i<points;i++)
            {
                angle = i*offsetAngle;
                ob = instance_create(x+radius*cos(angle),y-radius*sin(angle),obj_Exp);
                ob.value=ceil(price_range[item_num]*random_range(0.25,0.5)*global.level*0.1/points);
            }
        }
    }
    instance_destroy();
}
