gml_pragma("forceinline");
//
if attack_type[char] == "AXE"
{
    can_move = false;
    Attack_Effects();
    Cooldown();
    wepang = -wepang;
    wkick = 6        
    var physDamage = ((100+(10*ability_lvl[0]))/100)*atk_dam[char];
    var bonusPhysDamage = ((100+(10*ability_lvl[0]))/100)*dam_bon[char];
    if status == "rage"
    {
        global.shake += 4;
        if (!Item_In_List(spr_Spiked_Shoes))
        {
            motion_add(point_direction(x,y,mouse_x,mouse_y),6)
        }
        Create_Projectile(x+lengthdir_x(12,angle),y+lengthdir_y(12,angle),attack_obj[char],team,atk_spd[char]+1.5,crit_chance,physDamage,bonusPhysDamage,0,0,knockback,angle+180,accuracy[char],acc_bon[char],true)
        Create_Projectile(x+lengthdir_x(12,angle),y+lengthdir_y(12,angle),attack_obj[char],team,atk_spd[char]+1.5,crit_chance,physDamage,bonusPhysDamage,0,0,knockback,angle+90,accuracy[char],acc_bon[char],true)               
        Create_Projectile(x+lengthdir_x(12,angle),y+lengthdir_y(12,angle),attack_obj[char],team,atk_spd[char]+1.5,crit_chance,physDamage,bonusPhysDamage,0,0,knockback,angle-90,accuracy[char],acc_bon[char],true)    
        Create_Projectile(x+lengthdir_x(12,angle),y+lengthdir_y(12,angle),attack_obj[char],team,atk_spd[char]+1.5,crit_chance,physDamage,bonusPhysDamage,0,0,knockback,angle-180,accuracy[char],acc_bon[char],true)
        
        /*if random(8)<1 then instance_create(x+lengthdir_x(32,0),y+lengthdir_y(32,0),obj_Electric_Burst);
        if random(8)<1 then instance_create(x+lengthdir_x(32,90),y+lengthdir_y(32,90),obj_Electric_Burst);
        if random(8)<1 then instance_create(x+lengthdir_x(32,180),y+lengthdir_y(32,180),obj_Electric_Burst);
        if random(8)<1 then instance_create(x+lengthdir_x(32,270),y+lengthdir_y(32,270),obj_Electric_Burst);*/
    }else
    {
        global.shake += 4;
        if (!Item_In_List(spr_Spiked_Shoes))
        {
            motion_add(point_direction(x,y,mouse_x,mouse_y),2)
        }
        Create_Projectile(x+lengthdir_x(12,angle),y+lengthdir_y(12,angle),attack_obj[char],team,atk_spd[char],crit_chance,physDamage,bonusPhysDamage,0,0,knockback,angle,accuracy[char],acc_bon[char],true)        
        //with obj_Hero Create_Projectile(other.x,other.y,obj_Bomb_Explode,team,0,crit_chance,atk_dam[char],dam_bon[char],knockback,angle,accuracy[char],acc_bon[char])        
        //instance_create(x,y,obj_Electric_Burst);        
    }
    can_move = true;        
}

if attack_type[char] == "ARROW"
{
    Attack_Effects();
    Cooldown();
    //wepang = -wepang;
    wkick = 4
    if (!Item_In_List(spr_Spiked_Shoes))
    {
        motion_add(point_direction(mouse_x,mouse_y,x,y),1)
    }
    if status == "pentuple"
    {
        var damageMultiplier=1;
        if (Item_In_List(spr_Amplifying_Tome))
        {
            damageMultiplier*=2;
        }
        Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,damageMultiplier*((92+(8*ability_lvl[0]))/100)*atk_dam[char],damageMultiplier*dam_bon[char],0,0,knockback,-25+angle,accuracy[char],acc_bon[char],merge_color(c_green,c_lime,0.5),true)
        Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,damageMultiplier*((92+(8*ability_lvl[0]))/100)*atk_dam[char],damageMultiplier*dam_bon[char],0,0,knockback,-10+angle,accuracy[char],acc_bon[char],merge_color(c_green,c_lime,0.5),true)
        Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,damageMultiplier*((92+(8*ability_lvl[0]))/100)*atk_dam[char],damageMultiplier*dam_bon[char],0,0,knockback,angle,accuracy[char],acc_bon[char],merge_color(c_green,c_lime,0.5),true)
        Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,damageMultiplier*((92+(8*ability_lvl[0]))/100)*atk_dam[char],damageMultiplier*dam_bon[char],0,0,knockback,10+angle,accuracy[char],acc_bon[char],merge_color(c_green,c_lime,0.5),true)
        Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,damageMultiplier*((92+(8*ability_lvl[0]))/100)*atk_dam[char],damageMultiplier*dam_bon[char],0,0,knockback,25+angle,accuracy[char],acc_bon[char],merge_color(c_green,c_lime,0.5),true)        
    }else
    {
        Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,((92+(8*ability_lvl[0]))/100)*atk_dam[char],dam_bon[char],0,0,knockback,angle,accuracy[char],acc_bon[char],merge_color(c_green,c_lime,0.5),true)
    }
}

if attack_type[char] == "KNIFE"
{
    Attack_Effects();
    Cooldown();
    wepang = -wepang;
    wkick = 4;
    if (!Item_In_List(spr_Spiked_Shoes))
    {
        motion_add(point_direction(mouse_x,mouse_y,x,y),1)
    }
    Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,((100+(20*ability_lvl[0]))/100)*atk_dam[char],((100+(20*ability_lvl[0]))/100)*dam_bon[char],0,0,knockback,angle,accuracy[char],acc_bon[char],merge_colour(c_aqua,c_purple,0.3),true)
    //if (alarm[5]>0)
    {
        if (status=="invisible")
        {
            if (alarm[2]>0.5*room_speed)
            {
                alarm[2]-=0.5*room_speed;
            }
            else
            {
                alarm[2]=1;
            }
        }
    }
}

if attack_type[char] == "SWORD"
{
    Attack_Effects();
    Cooldown();
    wepang = -wepang;
    wkick = 6
    if (!Item_In_List(spr_Spiked_Shoes))
    {
        motion_add(point_direction(x,y,mouse_x,mouse_y),2)
    }
    Create_Projectile(x+lengthdir_x(16,angle),y+lengthdir_y(16,angle),attack_obj[char],team,atk_spd[char],crit_chance,((85+(15*ability_lvl[0]))/100)*atk_dam[char],dam_bon[char],0,0,knockback,angle,accuracy[char],acc_bon[char],true)
    can_move = true;    
}

if attack_type[char] == "MAGIC"
{
    Attack_Effects();
    Cooldown();
    scr_part_smoke(3,360,random(5),1,depth,random(5), merge_color(c_dkgray,c_gray,random_range(0.7,1)),random(360),1);//Smoke replacement    
    wepang = -wepang;
    wkick = -8
    if (!Item_In_List(spr_Spiked_Shoes))
    {
        motion_add(point_direction(mouse_x,mouse_y,x,y),3)
    }
    instance_create(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),obj_Fireball_Burst);
    can_move = true;    
}

if attack_type[char] == "HEAL"
{
    Attack_Effects();
    Cooldown();
    scr_part_smoke(3,360,random(5),1,depth,random(5),c_white,random(360),1);//Smoke replacement   
    wepang = -wepang;
    wkick = 4
    if (!Item_In_List(spr_Spiked_Shoes))
    {
        motion_add(point_direction(mouse_x,mouse_y,x,y),3)
    }
    Create_Projectile(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,0,0,((100+(5*ability_lvl[0]))/100)*mag_dam[char],mag_bon[char],knockback,angle,accuracy[char],acc_bon[char],true)          
    can_move = true;
}

if attack_type[char] == "NECRO"
{
    Attack_Effects();
    Cooldown();
    wepang = -wepang;
    wkick = 4
    if (!Item_In_List(spr_Spiked_Shoes))
    {
        motion_add(point_direction(mouse_x,mouse_y,x,y),3) 
    }
    if instance_exists(obj_Necro_Orb)
        Create_Projectile(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,atk_dam[char]+(((50+(15*ability_lvl[1]))/100)*atk_dam[char]),dam_bon[char],((100+(5*ability_lvl[0]))/100)*mag_dam[char],mag_bon[char],knockback,angle,accuracy[char],acc_bon[char],true)
    else
        Create_Projectile(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),attack_obj[char],team,atk_spd[char],crit_chance,0,0,((100+(5*ability_lvl[0]))/100)*mag_dam[char],mag_bon[char],knockback,angle,accuracy[char],acc_bon[char],true)
    can_move = true;
}

if attack_type[char] == "NIGHT"
{
    if skmode == 1
    {
        Attack_Effects();        
        Cooldown();      
        wepang = -wepang;
        wkick = 6
        global.shake += 8
        if (!Item_In_List(spr_Spiked_Shoes))
        {
            motion_add(point_direction(x,y,mouse_x,mouse_y),2)        
        }
        if fstrike == 1
        {
            Create_Projectile(x+lengthdir_x(16,angle),y+lengthdir_y(16,angle),obj_Scythe_Slash,team,atk_spd[char],crit_chance,(((125+(5*ability_lvl[0]))/100)*atk_dam[char])+(((50+(10*ability_lvl[2]))/100)*atk_dam[char]),dam_bon[char],0,0,knockback,angle,accuracy[char],acc_bon[char],true)
            fstrike = 0;
        }
        else
            Create_Projectile(x+lengthdir_x(16,angle),y+lengthdir_y(16,angle),obj_Scythe_Slash,team,atk_spd[char],crit_chance,((125+(5*ability_lvl[0]))/100)*atk_dam[char],dam_bon[char],0,0,knockback,angle,accuracy[char],acc_bon[char],true)
        can_move = true;    
    }else
    {
        if !instance_exists(obj_Chakram)
        {
            Attack_Effects();        
            Cooldown();            
            alarm[0] -= (50/100)*cooldown[char];            
            scr_part_smoke(3,360,random(5),1,depth,random(5), c_white,random(360),1);//Smoke replacement   
            wepang = -wepang;
            wkick = 4;
            if (!Item_In_List(spr_Spiked_Shoes))
            {
                motion_add(point_direction(mouse_x,mouse_y,x,y),3);
            }
            if fstrike == 1
            {
                Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),obj_Chakram,team,8,crit_chance,((50+(8*ability_lvl[0]))/100)*atk_dam[char],dam_bon[char],((50+(10*ability_lvl[2]))/100)*mag_dam[char],mag_bon[char],knockback,angle,accuracy[char],acc_bon[char],color[char],true);
                fstrike = 0;
            }else
                Create_Projectile_Ext(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),obj_Chakram,team,8,crit_chance,((50+(8*ability_lvl[0]))/100)*atk_dam[char],dam_bon[char],0,0,knockback,angle,accuracy[char],acc_bon[char],color[char],true);
            can_move = true;    
        }
    }
}

if attack_type[char] == "WRENCH"
{
    Attack_Effects();
    Cooldown();
    wepang = -wepang;
    wkick = 6
    if (!Item_In_List(spr_Spiked_Shoes))
    {
        motion_add(point_direction(x,y,mouse_x,mouse_y),2)
    }
    Create_Projectile(x+lengthdir_x(16,angle),y+lengthdir_y(16,angle),attack_obj[char],team,atk_spd[char],crit_chance,((80+(10*ability_lvl[0]))*0.01)*atk_dam[char],((80+(10*ability_lvl[0]))*0.01)*dam_bon[char],0,0,knockback+3,angle,accuracy[char],acc_bon[char],true)
    can_move = true;    
}

if attack_type[char] == "MACE"
{
    Attack_Effects();
    Cooldown();
    wepang = -wepang;
    wkick = 6
    if (!Item_In_List(spr_Spiked_Shoes))
    {
        motion_add(point_direction(x,y,mouse_x,mouse_y),2)
    }
    Create_Projectile(x+lengthdir_x(16,angle),y+lengthdir_y(16,angle),attack_obj[char],team,atk_spd[char],crit_chance,((100+(10*ability_lvl[0]))*0.01)*atk_dam[char],((100+(10*ability_lvl[0]))*0.01)*dam_bon[char],0,0,knockback+1,angle,accuracy[char],acc_bon[char],true)
    can_move = true;    
}
