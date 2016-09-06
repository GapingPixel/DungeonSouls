gml_pragma("forceinline");
if rank[8] == 5
{
    name[8]         = "DUELIST";
    bio[8]          = "Great mobility#Sturdy";
    hpmax[8]        = 130;
    Brawler_Ability();        
    cooldown[8]     = 60*0.7;
    cooldownB[8]    = 60*4;
    cooldownC[8]    = 60*12;
    atk_spd[8]      = 0.5/2; //attack speed
    atk_dam[8]      = 6; //base damage
    dam_bon[8]      = 1; //bonus damage
    defense[8]      = 1; //base def
    def_bon[8]      = 0; //bonus def
    mag_dam[8]      = 0; //base magic damage
    mag_bon[8]      = 0; //bonus magic damage        
    mresist[8]      = 1; //base magic resist
    mr_bon[8]       = 0; //bonus magic resist
    accuracy[8]     = 50; //base accuracy
    acc_bon[8]      = 0; //bonus accuracy
    wlk_spd[8]      = 1.4; //walking speed; MAX = 3
    attack_type[8]  = "MACE";
    attack_lvl[8]   = 0;
    attack_obj[8]   = obj_Axe_Slash;
    weapon[8]       = spr_Duelist_Weapon;
    spr_idle[8]     = spr_Duelist_Idle
    spr_walk[8]     = spr_Duelist_Walk
    spr_hurt[8]     = spr_Duelist_Hit
    spr_dead[8]     = spr_Duelist_Corpse;
    color[8]        = c_maroon
    voice[8]        = snd_guy_voice; 
}else
{
    name[8]         = "BRAWLER";
    bio[8]          = "Great mobility#Sturdy";
    hpmax[8]        = 120;
    Brawler_Ability();        
    cooldown[8]     = 60*0.7;
    cooldownB[8]    = 60*6;
    cooldownC[8]    = 60*12;
    atk_spd[8]      = 0.5/2; //attack speed
    atk_dam[8]      = 4; //base damage
    dam_bon[8]      = 1; //bonus damage
    defense[8]      = 1; //base def
    def_bon[8]      = 0; //bonus def
    mag_dam[8]      = 0; //base magic damage
    mag_bon[8]      = 0; //bonus magic damage        
    mresist[8]      = 0; //base magic resist
    mr_bon[8]       = 0; //bonus magic resist
    accuracy[8]     = 50; //base accuracy
    acc_bon[8]      = 0; //bonus accuracy
    wlk_spd[8]      = 1.4; //walking speed; MAX = 3
    attack_type[8]  = "MACE";
    attack_lvl[8]   = 0;
    attack_obj[8]   = obj_Axe_Slash;
    weapon[8]       = spr_Brawler_Weapon;
    spr_idle[8]     = spr_Brawler_Idle
    spr_walk[8]     = spr_Brawler_Walk
    spr_hurt[8]     = spr_Brawler_Hit
    spr_dead[8]     = spr_Brawler_Corpse;
    color[8]        = c_maroon
    voice[8]        = snd_guy_voice;
}
