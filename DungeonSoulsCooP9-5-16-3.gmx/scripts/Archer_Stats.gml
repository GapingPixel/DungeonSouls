gml_pragma("forceinline");
if rank[1] == 5
{
    name[1]         = "RANGER";
    bio[1]          = "Most accurate#Can shoot multiple arrows";
    hpmax[1]        = 75;
    Archer_Ability();        
    cooldown[1]     = 10*2;
    cooldownB[1]    = 60*12;
    cooldownC[1]    = 60*18;
    atk_spd[1]      = 15/2; //attack speed
    atk_dam[1]      = 4 //base damage
    dam_bon[1]      = 1; //bonus damage
    defense[1]      = 1; //base def
    def_bon[1]      = 0; //bonus def
    mag_dam[1]      = 0; //base magic damage
    mag_bon[1]      = 0; //bonus magic damage        
    mresist[1]      = 1; //base magic resist
    mr_bon[1]       = 0; //bonus magic resist
    accuracy[1]     = 90; //base accuracy
    acc_bon[1]      = 0; //bonus accuracy
    wlk_spd[1]      = 3.5/2; //walking speed;
    attack_type[1]  = "ARROW";
    attack_lvl[1]   = 0;
    attack_obj[1]   = obj_Arrow;
    weapon[1]       = spr_Viper;
    spr_idle[1]     = spr_Ranger
    spr_walk[1]     = spr_Ranger_Walk
    spr_hurt[1]     = spr_Ranger_Hit
    spr_dead[1]     = spr_Ranger_Corpse;
    color[1]        = merge_color(c_green,c_lime,0.5);
    voice[1]        = snd_archer_voice;
}else
{
    name[1]         = "ARCHER";
    bio[1]          = "Most accurate#Can shoot multiple arrows";
    hpmax[1]        = 50;
    Archer_Ability();
    cooldown[1]     = 10*2;
    cooldownB[1]    = 60*12;
    cooldownC[1]    = 60*18;
    atk_spd[1]      = 15/2; //attack speed
    atk_dam[1]      = 4 //base damage
    dam_bon[1]      = 1; //bonus damage
    defense[1]      = 1; //base def
    def_bon[1]      = 0; //bonus def
    mag_dam[1]      = 0; //base magic damage
    mag_bon[1]      = 0; //bonus magic damage        
    mresist[1]      = 1; //base magic resist
    mr_bon[1]       = 0; //bonus magic resist
    accuracy[1]     = 90; //base accuracy
    acc_bon[1]      = 0; //bonus accuracy
    wlk_spd[1]      = 3.5/2; //walking speed;
    attack_type[1]  = "ARROW";
    attack_lvl[1]   = 0;
    attack_obj[1]   = obj_Arrow;
    weapon[1]       = spr_Archer_Bow;
    spr_idle[1]     = spr_Archer_Idle
    spr_walk[1]     = spr_Archer_Walk
    spr_hurt[1]     = spr_Archer_Hit
    spr_dead[1]     = spr_Archer_Corpse;
    color[1]        = merge_color(c_green,c_lime,0.5);
    voice[1]        = snd_archer_voice;
}
/*switch(rank[1])
{
    case 0:
        name[1]         = "ARCHER";
        bio[1]          = "Most accurate#Can shoot multiple arrows";
        hpmax[1]        = 50;
        Archer_Ability();
        cooldown[1]     = 10*2;
        cooldownB[1]    = 60*12;
        cooldownC[1]    = 60*18;
        atk_spd[1]      = 15/2; //attack speed
        atk_dam[1]      = 4 //base damage
        dam_bon[1]      = 1; //bonus damage
        defense[1]      = 1; //base def
        def_bon[1]      = 0; //bonus def
        mag_dam[1]      = 0; //base magic damage
        mag_bon[1]      = 0; //bonus magic damage        
        mresist[1]      = 1; //base magic resist
        mr_bon[1]       = 0; //bonus magic resist
        accuracy[1]     = 90; //base accuracy
        acc_bon[1]      = 0; //bonus accuracy
        wlk_spd[1]      = 3.5/2; //walking speed;
        attack_type[1]  = "ARROW";
        attack_lvl[1]   = 0;
        attack_obj[1]   = obj_Arrow;
        weapon[1]       = spr_Archer_Bow;
        spr_idle[1]     = spr_Archer_Idle
        spr_walk[1]     = spr_Archer_Walk
        spr_hurt[1]     = spr_Archer_Hit
        spr_dead[1]     = spr_Archer_Corpse;
        color[1]        = merge_color(c_green,c_lime,0.5);
        voice[1]        = snd_archer_voice;        
        break;
        
    case 1:
        name[1]         = "ARCHER";
        bio[1]          = "Most accurate#Can shoot multiple arrows";
        hpmax[1]        = 55;
        Archer_Ability();        
        cooldown[1]     = 10*2;
        cooldownB[1]    = 60*12;
        cooldownC[1]    = 60*18;
        atk_spd[1]      = 7.5; //attack speed
        atk_dam[1]      = 5 //base damage
        dam_bon[1]      = 2; //bonus damage
        defense[1]      = 1; //base def
        def_bon[1]      = 0; //bonus def
        mag_dam[1]      = 0; //base magic damage
        mag_bon[1]      = 0; //bonus magic damage        
        mresist[1]      = 1; //base magic resist
        mr_bon[1]       = 0; //bonus magic resist
        accuracy[1]     = 91; //base accuracy
        acc_bon[1]      = 0; //bonus accuracy
        wlk_spd[1]      = 1.75; //walking speed;
        attack_type[1]  = "ARROW";
        attack_lvl[1]   = 0;
        attack_obj[1]   = obj_Arrow;
        weapon[1]       = spr_Archer_Bow;
        spr_idle[1]     = spr_Archer_Idle
        spr_walk[1]     = spr_Archer_Walk
        spr_hurt[1]     = spr_Archer_Hit
        spr_dead[1]     = spr_Archer_Corpse;
        color[1]        = merge_color(c_green,c_lime,0.5);
        break;
        
    case 2:
        name[1]         = "ARCHER";
        bio[1]          = "Most accurate#Can shoot multiple arrows";
        hpmax[1]        = 60;
        Archer_Ability();        
        cooldown[1]     = 10*2;
        cooldownB[1]    = 60*12;
        cooldownC[1]    = 60*18;
        atk_spd[1]      = 7.7; //attack speed
        atk_dam[1]      = 5 //base damage
        dam_bon[1]      = 2; //bonus damage
        defense[1]      = 1; //base def
        def_bon[1]      = 0; //bonus def
        mag_dam[1]      = 0; //base magic damage
        mag_bon[1]      = 0; //bonus magic damage        
        mresist[1]      = 1; //base magic resist
        mr_bon[1]       = 0; //bonus magic resist
        accuracy[1]     = 92; //base accuracy
        acc_bon[1]      = 0; //bonus accuracy
        wlk_spd[1]      = 1.76; //walking speed;
        attack_type[1]  = "ARROW";
        attack_lvl[1]   = 0;
        attack_obj[1]   = obj_Arrow;
        weapon[1]       = spr_Archer_Bow;
        spr_idle[1]     = spr_Archer_Idle
        spr_walk[1]     = spr_Archer_Walk
        spr_hurt[1]     = spr_Archer_Hit
        spr_dead[1]     = spr_Archer_Corpse;
        color[1]        = merge_color(c_green,c_lime,0.5);
        voice[1]        = snd_archer_voice;
        break;
        
    case 3:
        name[1]         = "ARCHER";
        bio[1]          = "Most accurate#Can shoot multiple arrows";
        hpmax[1]        = 65;
        Archer_Ability();       
        cooldown[1]     = 10*2;
        cooldownB[1]    = 60*12;
        cooldownC[1]    = 60*18;
        atk_spd[1]      = 7.8; //attack speed
        atk_dam[1]      = 6 //base damage
        dam_bon[1]      = 2; //bonus damage
        defense[1]      = 1; //base def
        def_bon[1]      = 0; //bonus def
        mag_dam[1]      = 0; //base magic damage
        mag_bon[1]      = 0; //bonus magic damage        
        mresist[1]      = 1; //base magic resist
        mr_bon[1]       = 0; //bonus magic resist
        accuracy[1]     = 93; //base accuracy
        acc_bon[1]      = 0; //bonus accuracy
        wlk_spd[1]      = 1.76; //walking speed;
        attack_type[1]  = "ARROW";
        attack_lvl[1]   = 0;
        attack_obj[1]   = obj_Arrow;
        weapon[1]       = spr_Archer_Bow;
        spr_idle[1]     = spr_Archer_Idle
        spr_walk[1]     = spr_Archer_Walk
        spr_hurt[1]     = spr_Archer_Hit
        spr_dead[1]     = spr_Archer_Corpse;
        color[1]        = merge_color(c_green,c_lime,0.5);
        voice[1]        = snd_archer_voice;
        break;
        
    case 4:
        name[1]         = "ARCHER";
        bio[1]          = "Most accurate#Can shoot multiple arrows";
        hpmax[1]        = 70;
        Archer_Ability();        
        cooldown[1]     = 10*2;
        cooldownB[1]    = 60*12;
        cooldownC[1]    = 60*18;
        atk_spd[1]      = 7.9; //attack speed
        atk_dam[1]      = 7 //base damage
        dam_bon[1]      = 2; //bonus damage
        defense[1]      = 1; //base def
        def_bon[1]      = 0; //bonus def
        mag_dam[1]      = 0; //base magic damage
        mag_bon[1]      = 0; //bonus magic damage        
        mresist[1]      = 1; //base magic resist
        mr_bon[1]       = 0; //bonus magic resist
        accuracy[1]     = 94; //base accuracy
        acc_bon[1]      = 0; //bonus accuracy
        wlk_spd[1]      = 1.77; //walking speed;
        attack_type[1]  = "ARROW";
        attack_lvl[1]   = 0;
        attack_obj[1]   = obj_Arrow;
        weapon[1]       = spr_Archer_Bow;
        spr_idle[1]     = spr_Archer_Idle
        spr_walk[1]     = spr_Archer_Walk
        spr_hurt[1]     = spr_Archer_Hit
        spr_dead[1]     = spr_Archer_Corpse;
        color[1]        = merge_color(c_green,c_lime,0.5);
        voice[1]        = snd_archer_voice;
        break;
        
    case 5:
        name[1]         = "RANGER";
        bio[1]          = "Most accurate#Can shoot multiple arrows";
        hpmax[1]        = 75;
        Archer_Ability();        
        cooldown[1]     = 10*2;
        cooldownB[1]    = 60*12;
        cooldownC[1]    = 60*18;
        atk_spd[1]      = 8; //attack speed
        atk_dam[1]      = 8 //base damage
        dam_bon[1]      = 2; //bonus damage
        defense[1]      = 1; //base def
        def_bon[1]      = 0; //bonus def
        mag_dam[1]      = 0; //base magic damage
        mag_bon[1]      = 0; //bonus magic damage        
        mresist[1]      = 1; //base magic resist
        mr_bon[1]       = 0; //bonus magic resist
        accuracy[1]     = 95; //base accuracy
        acc_bon[1]      = 0; //bonus accuracy
        wlk_spd[1]      = 1.77; //walking speed;
        attack_type[1]  = "ARROW";
        attack_lvl[1]   = 0;
        attack_obj[1]   = obj_Arrow;
        weapon[1]       = spr_Viper;
        spr_idle[1]     = spr_Ranger
        spr_walk[1]     = spr_Ranger_Walk
        spr_hurt[1]     = spr_Ranger_Hit
        spr_dead[1]     = spr_Ranger_Corpse;
        color[1]        = merge_color(c_green,c_lime,0.5);
        voice[1]        = snd_archer_voice;
        break;                                        
}*/
