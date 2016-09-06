with obj_Hero
{
    //LIFE STEAL
    if life_steal > 0
    {      
        if hp < hpmax[char]      
           hp += (life_steal*0.01)*other.damage;
            repeat(random(4))
                with instance_create(x+choose(random(8),-random(8)),y+choose(random(4),-random(4)),obj_Heal_Part)
                {
                    depth=other.depth-1
                    vspeed=-0.5+random(0.5);
                }
    }
    //SHOCK
    if shock_chance > 0
    {
        if Test_Chance(shock_chance)
            if other.sprite_index != spr_Electric_Shock        
                Create_Projectile(other.x+lengthdir_x(random(4),random(360)),other.y+lengthdir_y(random(4),random(360)),obj_Electric_Shock,team,0,crit_chance,0,0,2,2,0,random(360),99,0,false);
    }
    
    //SLOW
    if ds_list_find_index(global.list,spr_Beer) != -1 and Test_Chance(50)
    {
        //SLOWED
        with other
        {
            obj = instance_create(x,y,obj_St_Slowed)
            obj.owner       = id;
            obj.pdamage     = 0;
            obj.sec         = 0;
            obj.alarm[1]    = 60*3;
        }
    }
    if slow_chance > 0
    {
        if Test_Chance(slow_chance)
            //SLOWED
            with other
            {
                obj = instance_create(x,y,obj_St_Slowed)
                obj.owner       = id;
                obj.pdamage     = 0;
                obj.sec         = 0;
                obj.alarm[1]    = 60*other.slow_duration;
            }
    }
    //BURN
    if burn_chance > 0
    {
        if Test_Chance(burn_chance)
        {
            //BURNED
            with other
            {
                obj = instance_create(x,y,obj_St_Burned)
                obj.owner       = id;
                obj.pdamage     = other.burn_damage;
                obj.sec         = other.burn_second;
                obj.alarm[1]    = 60*other.burn_duration;
            }
        }
    }    
}









/*
//***************** STATUSES **********************\\

//POISONED
with target
{
    with instance_create(x,y,obj_St_Poisoned)
    {
        owner       = other.id;
        pdamage     = 3;    
        sec         = 5;
        alarm[1]    = 60*3;
    }
}

//STUNNED
with target
{
    with instance_create(x,y,obj_St_Stunned)
    {
        owner       = other.id;
        ospeed      = other.speed;
        pdamage     = 0;
        sec         = 0;
        alarm[1]    = 60*5;
    }
}*/
