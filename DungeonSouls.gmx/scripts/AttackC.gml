if attack_type[char] == "AXE"
{
    ////sound_play(snd_battle_axe);
    var damageMultiplier=1,cooldownMultiplier=1;
    if (Item_In_List(spr_Amplifying_Tome))
    {
        damageMultiplier*=2;
        cooldownMultiplier*=2;
    }
    alarm[5] = (cooldownC[char] - (buff_cd[2]/100)*cooldownC[char])*cooldownMultiplier;
    Create_Projectile(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),obj_Axe_Throw,team,8,crit_chance,((100+(10*ability_lvl[2]))*0.01)*atk_dam[char]*damageMultiplier,((100+(10*ability_lvl[2]))*0.01)*dam_bon[char]*damageMultiplier,0,0,knockback,angle,99,0,false)
    Play_Sound(snd_cast,1,0.5,0,5000,true,false);    
}

if attack_type[char] == "ARROW"
{
    if point_distance(x,y,mouse_x,mouse_y) <= 160
    {
        var cooldownMultiplier=1;
        if (Item_In_List(spr_Amplifying_Tome))
        {
            cooldownMultiplier*=2;
        }
        //sound_play(snd_fire_arrow);
        alarm[5] = (cooldownC[char] - (buff_cd[2]/100)*cooldownC[char])*cooldownMultiplier;
        mx = mouse_x;
        my = mouse_y;
        arrow = 10+(2*ability_lvl[2]);
        alarm[6] = 2;
        Play_Sound(snd_cast,1,0.5,0,5000,true,false);        
    }
}

if attack_type[char] == "KNIFE" and alarm[2] == -1
{    
    status_cd = 60*3;    
    alarm[2] = 60*(1+(1*ability_lvl[2]));
    status = "invisible"
    with instance_create(x,y,obj_Smoke_Bomb) depth = other.depth-1;
    scr_part_smoke(8,360,random(5),2,depth,4,merge_color(c_aqua,c_blue,0.5),random(360),1);//Smoke replacement
    //Smoke(8,2,360,depth,0.2,merge_color(c_aqua,c_blue,0.5),4);
    Play_Sound(snd_cast,1,0.5,0,5000,true,false);        
}

if attack_type[char] == "SWORD"
{    
    var damageMultiplier=1,cooldownMultiplier=1;
    if (Item_In_List(spr_Amplifying_Tome))
    {
        damageMultiplier*=2;
        cooldownMultiplier*=2;
    }
    Play_Sound(snd_cast,1,0.5,0,5000,true,false);
    alarm[5] = cooldownMultiplier*(cooldownC[char] - (buff_cd[2]/100)*cooldownC[char]);              
    wepang = -wepang;
    wkick = 6
    if (!Item_In_List(spr_Spiked_Shoes))
    {
        motion_add(point_direction(x,y,mouse_x,mouse_y),2)
    }
    Create_Projectile(x+lengthdir_x(8,angle),y+lengthdir_y(8,angle),obj_Range_Sword_Slash,team,6,crit_chance,
    damageMultiplier*((50+(20*ability_lvl[2]))*0.01)*atk_dam[char],damageMultiplier*((100+(20*ability_lvl[2]))*0.01)*dam_bon[char],
    damageMultiplier*((100+(40*ability_lvl[2]))*0.01)*mag_dam[char],damageMultiplier*((100+(40*ability_lvl[2]))*0.01)*mag_bon[char],knockback*3,angle,99,1,false) 
}

if attack_type[char] == "MAGIC"
{
    var damageMultiplier=1,cooldownMultiplier=1;
    if (Item_In_List(spr_Amplifying_Tome))
    {
        damageMultiplier*=2;
        cooldownMultiplier*=2;
    }
    if !instance_exists(obj_Wizard_Soul)
    {   
        if point_distance(x,y,mouse_x,mouse_y) <= 128
        {
            if tile_layer_find(100,mouse_x,mouse_y) 
            {
                with instance_create(mouse_x,mouse_y,obj_Wizard_Soul)
                {  
                    depth = other.depth-1;
                    with instance_create(mouse_x,mouse_y,obj_Smoke_Bomb) depth = other.depth-1;
                    Play_Sound(snd_cast,1,0.5,0,5000,true,false);          
                    sprite_index = other.sprite_index;
                    image_index = 0;
                    image_xscale = other.image_xscale;
                }
                alarm[5] = 60;
            }
        }      

    }else
    {
        with obj_Wizard_Soul
        {        
            with other
            {
                x = other.x;
                y = other.y;
                instance_create(x,y,obj_Force);
                //Create_Projectile(x,y,obj_Area_Damage,team,0,crit_chance,atk_dam[char],dam_bon[char],knockback,-25+angle,accuracy[char],acc_bon[char])            
                Play_Sound(snd_cast,1,0.5,0,5000,true,false);                          
                alarm[5] = (cooldownC[char] - (buff_cd[2]/100)*cooldownC[char])
                *cooldownMultiplier; 
                
                with obj_Enemy
                    if point_in_circle(x,y,other.x,other.y,128)
                    {
                        obj             = instance_create(x,y,obj_St_Stunned)
                        obj.owner       = id;
                        obj.pdamage     = 0;
                        obj.sec         = 0;
                        obj.alarm[1]    = 60*3;
                        
                        hp -= ((5*(1*other.ability_lvl[2]))/100)*(other.mag_dam[other.char])*damageMultiplier
                    }
            }
            instance_destroy();
        }
    }    
}

if attack_type[char] == "HEAL" and alarm[2] == -1
{ 
    status = "regen";
    Play_Sound(snd_cast,1,0.5,0,5000,true,false);    
    status_cd = 60*6;    
    alarm[2] = 60*6;
    hp_regen += (10+(2*ability_lvl[2]))/3;        
}

if attack_type[char] == "NECRO"
{
    if instance_number(obj_Skeleton_Ally) < summon+ability_lvl[2]
    {
        if point_distance(x,y,mouse_x,mouse_y) <= 96
        {
            if tile_layer_find(100,mouse_x,mouse_y) and collision_circle(mouse_x,mouse_y,8,obj_Wall,0,0) < 0
            {
                with instance_create(mouse_x,mouse_y,obj_Skeleton_Ally)
                {
                    maxhp = 80+(other.ability_lvl[2]*10);
                    hp = maxhp;
                    alarm[2] = 60*(10+(5*other.ability_lvl[2]));
                    depth = other.depth-1;
                    with instance_create(mouse_x,mouse_y,obj_Smoke_Bomb) depth = other.depth-1;
                    Play_Sound(snd_cast,1,0.5,0,5000,true,false);
                }
                if instance_number(obj_Skeleton_Ally) > (summon+ability_lvl[2])-1
                    alarm[5] = cooldownC[char] - (buff_cd[2]*0.01)*cooldownC[char];
                else
                    alarm[5] = 40;                
            }                      
        }
    }
}

if attack_type[char] == "NIGHT"
{ 
    Play_Sound(snd_cast,1,0.5,0,5000,true,false);
    alarm[5] = cooldownC[char] - (buff_cd[2]/100)*cooldownC[char];   
    if fstrike == 0 then fstrike = 1;
    if skmode == 1
    {
        skmode = 2        
        weapon[char] = spr_Chakram_Throw;
        with instance_create(x,y,obj_Beam) sprite_index = spr_Nightblade_Beam;
        Nightblade_Ability()
        wlk_spd[char] = wlk_spd[char] + (20/100)        
    }
    else if skmode == 2
    {
        skmode = 1
        weapon[char]=global.arcane_forge_weapon_sprite[char];
        with instance_create(x,y,obj_Beam) sprite_index = spr_Nightblade_Beam;
        Nightblade_Ability()
        wlk_spd[char] = wlk_spd[char] - (20/100)
    }
}
if attack_type[char] == "WRENCH"
{
    var radius=32;
    if (collision_circle(x,y,radius,obj_Wall,false,false)<0) //Not colliding with a wall
    {
        var mines = 8;
        var offsetAngle = 360/mines;
        var _angle;
        var baseDir = point_direction(x,y,mouse_x,mouse_y);
        for (var i=0;i<mines;i++)
        {
            _angle = degtorad(baseDir+(i*offsetAngle));
            ob=instance_create(x+radius*cos(_angle),y-radius*sin(_angle),obj_LandMine);
            ob.team=team;
        }
        var cooldownMultiplier=1;
        if (Item_In_List(spr_Amplifying_Tome))
        {
            cooldownMultiplier*=2;
        }
        alarm[5] = (cooldownC[char] - (buff_cd[2]*0.01)*cooldownC[char])*cooldownMultiplier;
        Play_Sound(snd_cast,1,0.5,0,5000,true,false);       
    }
}
if attack_type[char] == "MACE"
{
    if (collision_circle(x,y,96,obj_Enemy,false,false)>0)
    {
        alarm[7]=1;
        canmove=false;
        brawler_slashes=4+ability_lvl[2];
        status="invulnerable";
        var cooldownMultiplier=1;
        if (Item_In_List(spr_Amplifying_Tome))
        {
            cooldownMultiplier*=2;
        }
        alarm[5] = (cooldownC[char] - (buff_cd[2]*0.01)*cooldownC[char])*cooldownMultiplier;
        Play_Sound(snd_cast,1,0.5,0,5000,true,false);
    }
}
