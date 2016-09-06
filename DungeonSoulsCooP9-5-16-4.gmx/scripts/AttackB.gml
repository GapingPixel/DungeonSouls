gml_pragma("forceinline");
if attack_type[char] == "AXE" and alarm[2] == -1
{
    ////sound_play(snd_battle_axe);
    status = "rage"    
    status_cd = 60*5;    
    alarm[2]=60*(1+ability_lvl[1]);
    wepang = -wepang;
    wkick = 6
    if (!Item_In_List(spr_Spiked_Shoes))
    {
        motion_add(point_direction(x,y,mouse_x,mouse_y),2)    
    }
    buff_dam = 1; //bonus damage
    buff_def = 1; //base def
    buff_spd = .5; //walking speed;  
    buff_cd[0] = 80; //cooldown reduct
    Play_Sound(snd_cast,1,0.5,0,5000,true,false);
    instance_create(x,y,obj_Shout_Burst);
}

if attack_type[char] == "ARROW" and alarm[2] == -1
{
    //sound_play(snd_fire_arrow);    
    var damageMultiplier=1,cooldownMultiplier=1;
    if (Item_In_List(spr_Amplifying_Tome))
    {
        damageMultiplier*=2;
        cooldownMultiplier*=2;
    }
    status_cd = 60*5;    
    alarm[2] = 60*(2+ability_lvl[1])*cooldownMultiplier;
    status = "pentuple";
    //wepang = -wepang;
    wkick = 4
    if (!Item_In_List(spr_Spiked_Shoes))
    {
        motion_add(point_direction(mouse_x,mouse_y,x,y),1)
    }
    Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,atk_dam[char]*damageMultiplier,dam_bon[char]*damageMultiplier,0,0,knockback,-25+angle,accuracy[char],acc_bon[char],merge_color(c_green,c_lime,0.5),false)
    Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,atk_dam[char]*damageMultiplier,dam_bon[char]*damageMultiplier,0,0,knockback,-10+angle,accuracy[char],acc_bon[char],merge_color(c_green,c_lime,0.5),false)
    Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,atk_dam[char]*damageMultiplier,dam_bon[char]*damageMultiplier,0,0,knockback,angle,accuracy[char],acc_bon[char],merge_color(c_green,c_lime,0.5),false)
    Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,atk_dam[char]*damageMultiplier,dam_bon[char]*damageMultiplier,0,0,knockback,10+angle,accuracy[char],acc_bon[char],merge_color(c_green,c_lime,0.5),false)
    Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,atk_dam[char]*damageMultiplier,dam_bon[char]*damageMultiplier,0,0,knockback,25+angle,accuracy[char],acc_bon[char],merge_color(c_green,c_lime,0.5),false)                
    Play_Sound(snd_cast,1,0.5,0,5000,true,false);        
}

if attack_type[char] == "KNIFE"
{
    var damageMultiplier=1,cooldownMultiplier=1;
    if (Item_In_List(spr_Amplifying_Tome))
    {
        damageMultiplier*=2;
        cooldownMultiplier*=2;
    }
    alarm[1] = (cooldownB[char] - (buff_cd[1]/100)*cooldownB[char])*cooldownMultiplier;
    if (!Item_In_List(spr_Spiked_Shoes))
    {
        motion_add(point_direction(mouse_x,mouse_y,x,y),16)
    }
    Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),obj_Bomb,team,atk_spd[char]*2,crit_chance,damageMultiplier*((100+(30*ability_lvl[1]))/100)*atk_dam[char],damageMultiplier*dam_bon[char],0,0,knockback*2,angle,99,0,merge_color(c_aqua,c_blue,0.5),false)
    Play_Sound(snd_cast,1,0.5,0,5000,true,false);        
}

if attack_type[char] == "SWORD"
{
    if collision_circle(x,y,64,obj_Enemy,0,1) > 0
    {
        Play_Sound(snd_cast,1,0.5,0,5000,true,false);  
        var cooldownMultiplier=1;
        if (Item_In_List(spr_Amplifying_Tome))
        {
            cooldownMultiplier*=2;
        }
        alarm[1] = (cooldownB[char] - (buff_cd[1]/100)*cooldownB[char])*cooldownMultiplier;
        visible = false;    
        with obj_Enemy
            if point_in_circle(x,y,other.x,other.y,64)
                with instance_create(x,y,obj_Slash_Burst) target = other.id;
    } 
    /*if collision_circle(x,y,96,obj_Prop,0,1) > 0
    {
        Play_Sound(snd_cast,1,0.5,0,5000,true,false);
        alarm[1] = cooldownB[char] - (buff_cd[1]/100)*cooldownB[char];
        visible = false;    
        with obj_Prop
            if point_in_circle(x,y,other.x,other.y,95)
                with instance_create(x,y,obj_Slash_Burst) target = other.id;
    }*/                 
}

if attack_type[char] == "MAGIC"
{
    var cooldownMultiplier=1;
    if (Item_In_List(spr_Amplifying_Tome))
    {
        cooldownMultiplier*=2;
    }
    alarm[1] = (cooldownB[char] - (buff_cd[1]/100)*cooldownB[char])*cooldownMultiplier;
    wepang = -wepang;
    wkick = 4
    scr_part_smoke(8,360,random(5),1,depth,random(5), merge_color(c_dkgray,c_gray,random_range(0.7,1)),random(360),1);//Smoke replacement   
    //Smoke(8,1,360,depth,0.1, merge_color(c_dkgray,c_gray,random_range(0.7,1)),random(5))      
    if (!Item_In_List(spr_Spiked_Shoes))
    {  
        motion_add(point_direction(mouse_x,mouse_y,x,y),3)
    }
    var pos = 0;
    repeat(8)
    {
        obj = instance_create(x,y,obj_Fire_Burst_Track);
        obj.dir = point_direction(x,y,mouse_x,mouse_y)+pos;
        pos += 45;
    }
    Play_Sound(snd_cast,1,0.5,0,5000,true,false);          
}

if attack_type[char] == "HEAL"
{
    if point_distance(x,y,mouse_x,mouse_y) <= 64
    {
        if tile_layer_find(100,mouse_x,mouse_y) //and collision_circle(mouse_x,mouse_y,16,obj_Wall,0,0) < 0 
        {
            Play_Sound(snd_cast,1,0.5,0,5000,true,false); 
            alarm[1] = cooldownB[char] - ((buff_cd[1]/100)*cooldownB[char]);       
            wepang = -wepang;
            wkick = 4
            scr_part_smoke(8,360,random(5),1,depth,random(5), c_white,random(360),1);//Smoke replacement
            //Smoke(8,1,360,depth,0.1, c_white,random(5))        
            if (!Item_In_List(spr_Spiked_Shoes))
            {
                motion_add(point_direction(mouse_x,mouse_y,x,y),3)
            }
            with instance_create(mouse_x,mouse_y,obj_Cleric_Gate)
            {
                image_angle = point_direction(other.x,other.y,mouse_x,mouse_y);
                team = other.team;
            }
        }
    }        
}

if attack_type[char] == "NECRO"
{
    if !instance_exists(obj_Necro_Orb)
    {
        with instance_create(x,y,obj_Necro_Orb){dir = 45;len = 32;creator = other.id;}
        with instance_create(x,y,obj_Necro_Orb){dir = 90+45;len = 32;creator = other.id}
        with instance_create(x,y,obj_Necro_Orb){dir = 180+45;len = 32;creator = other.id}
        with instance_create(x,y,obj_Necro_Orb){dir = 270+45;len = 32;creator = other.id}            
    }else
    {
        with obj_Necro_Orb instance_destroy();
    }
    Play_Sound(snd_cast,1,0.5,0,5000,true,false);            
    var cooldownMultiplier=1;
    if (Item_In_List(spr_Amplifying_Tome))
    {
        cooldownMultiplier*=2;
    }
    alarm[1] = (cooldownB[char] - (buff_cd[1]/100)*cooldownB[char])*cooldownMultiplier;
}

if attack_type[char] == "NIGHT" and !instance_exists(obj_St_Strong_Defense)
{
    dash = 10;    
    if (!Item_In_List(spr_Spiked_Shoes))
    {
        motion_add(point_direction(mouse_x,mouse_y,x,y),16)
    }
    defense[char] = defense[char] + (50+(10*ability_lvl[1]))
    obj             = instance_create(x,y,obj_St_Strong_Defense)
    obj.owner       = id;
    obj.pdamage     = 0;
    obj.sec         = 0;
    obj.alarm[1]    = 60*(1+(1*ability_lvl[1]));    
    Play_Sound(snd_cast,1,0.5,0,5000,true,false);         
}

if (attack_type[char]=="WRENCH")
{
    if point_distance(x,y,mouse_x,mouse_y) <= 64
    {
        if tile_layer_find(100,mouse_x,mouse_y) and collision_circle(mouse_x,mouse_y,16,obj_Wall,0,0) < 0 
        {
            var spider_amount = 3+floor(ability_lvl[1]*0.5);
            for (var i=0;i<spider_amount;i++)
            {
                instance_create(mouse_x+random_range(-8,8),mouse_y+random_range(-8,8),obj_Spider_Bot);
            }
            Play_Sound(snd_cast,1,0.5,0,5000,true,false);            
            var cooldownMultiplier=1;
            if (Item_In_List(spr_Amplifying_Tome))
            {
                cooldownMultiplier*=2;
            }
        alarm[1] = (cooldownB[char] - (buff_cd[1]/100)*cooldownB[char])*cooldownMultiplier;
        }
    }
}

if (attack_type[char]=="MACE")
{
    if (brawler_spin<=0)
    {
        brawler_spin=(2+floor(ability_lvl[1]/3))*room_speed;
        Play_Sound(snd_cast,1,0.5,0,5000,true,false);            
        brawler_spin_dmg_timer=0.1*room_speed;
    }
}
