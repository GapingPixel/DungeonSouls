gml_pragma("forceinline");
with other.creator
{
    if burn_chance > 0
    {
        if Test_Chance(burn_chance)
        {
            with other
            {
                obj             = instance_create(x,y,obj_St_Burned)
                obj.owner       = id;
                obj.pdamage     = other.burn_damage;
                obj.sec         = other.burn_second;
                obj.alarm[1]    = 60*other.burn_duration;
            }
        }
    }
    
    if poison_chance > 0
    {
        if Test_Chance(poison_chance)
        {
            with other
            {
                obj             = instance_create(x,y,obj_St_Poisoned)
                obj.owner       = id;
                obj.pdamage     = other.poison_damage;
                obj.sec         = other.poison_second;
                obj.alarm[1]    = 60*other.poison_duration;
            }
        }
    } 
    
    if stun_chance > 0
    {
        if Test_Chance(stun_chance)
        {
            with other
            {
                obj             = instance_create(x,y,obj_St_Stunned)
                obj.owner       = id;
                obj.pdamage     = other.stun_damage;
                obj.sec         = other.stun_second;
                obj.alarm[1]    = 60*other.stun_duration;
            }
        }
    }   
    var slow_chance_modifier=1;
    if (Item_In_List(spr_Red_Scarf))
    {
        slow_chance_modifier*=0.5;
    }
    var final_slow_chance = slow_chance_modifier*slow_chance;
    if final_slow_chance > 0
    {
        if Test_Chance(final_slow_chance)
        {
            with other
            {
                var slow_effect_reduction = 1;
                if (Item_In_List(spr_Northern_Hat))
                {
                    slow_effect_reduction*=0.1*(Item_Value(spr_Northern_Hat)-1)+0.2;
                }
                if (Item_In_List(spr_Blizzard_Cape))
                {
                    slow_effect_reduction*=2;
                }
                obj             = instance_create(x,y,obj_St_Slowed)
                obj.owner       = id;
                obj.pdamage     = other.slow_damage*slow_effect_reduction;
                obj.sec         = other.slow_second;
                obj.alarm[1]    = 60*other.slow_duration*slow_effect_reduction;
            }
        }
    }
}
