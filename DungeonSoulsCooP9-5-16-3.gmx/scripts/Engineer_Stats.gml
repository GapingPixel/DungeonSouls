///Engineer_Stats()
gml_pragma("forceinline");
if rank[9] == 5
{
    name[9]         = "MECHANIC";
    bio[9]          = "Slow movement#High Burst";
    hpmax[9]        = 100;
    Engineer_Ability();        
    cooldown[9]     = 60*1.1;
    cooldownB[9]    = 60*5;
    cooldownC[9]    = 60*12;
    atk_spd[9]      = 0.5/2; //attack speed
    atk_dam[9]      = 7; //base damage
    dam_bon[9]      = 0; //bonus damage
    defense[9]      = 2; //base def
    def_bon[9]      = 1; //bonus def
    mag_dam[9]      = 3; //base magic damage
    mag_bon[9]      = 1; //bonus magic damage        
    mresist[9]      = 2; //base magic resist
    mr_bon[9]       = 0; //bonus magic resist
    accuracy[9]     = 35; //base accuracy
    acc_bon[9]      = 0; //bonus accuracy
    wlk_spd[9]      = 1.3; //walking speed; MAX = 3
    attack_type[9]  = "WRENCH";
    attack_lvl[9]   = 0;
    attack_obj[9]   = obj_Axe_Slash;
    weapon[9]       = spr_Mechanic_Wrench;
    spr_idle[9]     = spr_Mechanic_Idle
    spr_walk[9]     = spr_Mechanic_Walk
    spr_hurt[9]     = spr_Mechanic_Hit
    spr_dead[9]     = spr_Mechanic_Corpse;
    color[9]        = make_color_rgb(255,255,128);
    voice[9]        = snd_guy_voice; 
}else
{
    name[9]         = "ENGINEER";
    bio[9]          = "Slow movement#High Burst";
    hpmax[9]        = 90;
    Engineer_Ability();
    cooldown[9]     = 60*1.1;
    cooldownB[9]    = 60*5;
    cooldownC[9]    = 60*12;
    atk_spd[9]      = 0.5/2; //attack speed
    atk_dam[9]      = 6; //base damage
    dam_bon[9]      = 0; //bonus damage
    defense[9]      = 1; //base def
    def_bon[9]      = 1; //bonus def
    mag_dam[9]      = 1; //base magic damage
    mag_bon[9]      = 0; //bonus magic damage        
    mresist[9]      = 1; //base magic resist
    mr_bon[9]       = 0; //bonus magic resist
    accuracy[9]     = 35; //base accuracy
    acc_bon[9]      = 0; //bonus accura
    wlk_spd[9]      = 1.2; //walking speed; MAX = 3cy
    attack_type[9]  = "WRENCH";
    attack_lvl[9]   = 0;
    attack_obj[9]   = obj_Axe_Slash;
    weapon[9]       = spr_Engineer_Wrench;
    spr_idle[9]     = spr_Engineer_Idle
    spr_walk[9]     = spr_Engineer_Walk
    spr_hurt[9]     = spr_Engineer_Hit
    spr_dead[9]     = spr_Engineer_Corpse;
    color[9]        = make_color_rgb(255,255,128);
    voice[9]        = snd_guy_voice;
}
