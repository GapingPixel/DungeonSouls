gml_pragma("forceinline");
if rank[3] == 5
{
    name[3]         = "KNIGHT";
    bio[3]          = "Strong class#Can hit multiple foes";
    hpmax[3]        = 120;
    Warrior_Ability();        
    cooldown[3]     = 15*2;
    cooldownB[3]    = 60*12;
    cooldownC[3]    = 60*10;
    atk_spd[3]      = 0.25; //attack speed
    atk_dam[3]      = 4; //base damage
    dam_bon[3]      = 3; //bonus damage
    defense[3]      = 3; //base def
    def_bon[3]      = 3; //bonus def
    mag_dam[3]      = 1; //base magic damage
    mag_bon[3]      = 0; //bonus magic damage        
    mresist[3]      = 1; //base magic resist
    mr_bon[3]       = 0; //bonus magic resist
    accuracy[3]     = 50; //base accuracy
    acc_bon[3]      = 0; //bonus accuracy
    wlk_spd[3]      = 1.6; //walking speed;
    attack_type[3]  = "SWORD";
    attack_lvl[3]   = 0;
    attack_obj[3]   = obj_Sword2_Slash;
    weapon[3]       = spr_Knight_Sword;
    spr_idle[3]     = spr_Knight;
    spr_walk[3]     = spr_Knight_Walk;
    spr_hurt[3]     = spr_Knight_Hit;
    spr_dead[3]     = spr_Knight_Corpse
    color[3]        = c_red;
    voice[3]        = snd_guy_voice;
}else
{
    name[3]         = "WARRIOR";
    bio[3]          = "Strong class#Can hit multiple foes";
    hpmax[3]        = 80;
    Warrior_Ability();
    cooldown[3]     = 15*2;
    cooldownB[3]    = 60*12;
    cooldownC[3]    = 60*10;
    atk_spd[3]      = 0.25; //attack speed
    atk_dam[3]      = 4; //base damage
    dam_bon[3]      = 3; //bonus damage
    defense[3]      = 3; //base def
    def_bon[3]      = 3; //bonus def
    mag_dam[3]      = 1; //base magic damage
    mag_bon[3]      = 0; //bonus magic damage        
    mresist[3]      = 1; //base magic resist
    mr_bon[3]       = 0; //bonus magic resist
    accuracy[3]     = 50; //base accuracy
    acc_bon[3]      = 0; //bonus accuracy
    wlk_spd[3]      = 1.6; //walking speed;
    attack_type[3]  = "SWORD";
    attack_lvl[3]   = 0;
    attack_obj[3]   = obj_Sword2_Slash;
    weapon[3]       = spr_Warrior_Sword;
    spr_idle[3]     = spr_Warrior_Idle;
    spr_walk[3]     = spr_Warrior_Walk;
    spr_hurt[3]     = spr_Warrior_Hit;
    spr_dead[3]     = spr_Warrior_Corpse
    color[3]        = c_red;
    voice[3]        = snd_guy_voice;
}

/*switch(rank[3])
{
    case 0:
        name[3]         = "WARRIOR";
        bio[3]          = "Strong class#Can hit multiple foes";
        hpmax[3]        = 80;
        Warrior_Ability();
        cooldown[3]     = 15*2;
        cooldownB[3]    = 60*12;
        cooldownC[3]    = 60*10;
        atk_spd[3]      = 0.25; //attack speed
        atk_dam[3]      = 4; //base damage
        dam_bon[3]      = 3; //bonus damage
        defense[3]      = 3; //base def
        def_bon[3]      = 3; //bonus def
        mag_dam[3]      = 1; //base magic damage
        mag_bon[3]      = 0; //bonus magic damage        
        mresist[3]      = 1; //base magic resist
        mr_bon[3]       = 0; //bonus magic resist
        accuracy[3]     = 50; //base accuracy
        acc_bon[3]      = 0; //bonus accuracy
        wlk_spd[3]      = 1.6; //walking speed;
        attack_type[3]  = "SWORD";
        attack_lvl[3]   = 0;
        attack_obj[3]   = obj_Sword2_Slash;
        weapon[3]       = spr_Warrior_Sword;
        spr_idle[3]     = spr_Warrior_Idle;
        spr_walk[3]     = spr_Warrior_Walk;
        spr_hurt[3]     = spr_Warrior_Hit;
        spr_dead[3]     = spr_Warrior_Corpse
        color[3]        = c_red;
        voice[3]        = snd_guy_voice;
        break;
        
    case 1:
        name[3]         = "WARRIOR";
        bio[3]          = "Strong class#Can hit multiple foes";
        hpmax[3]        = 90;
        Warrior_Ability();        
        cooldown[3]     = 15*2;
        cooldownB[3]    = 60*12;
        cooldownC[3]    = 60*10;
        atk_spd[3]      = 0.25; //attack speed
        atk_dam[3]      = 4; //base damage
        dam_bon[3]      = 4; //bonus damage
        defense[3]      = 5; //base def
        def_bon[3]      = 3; //bonus def
        mag_dam[3]      = 1; //base magic damage
        mag_bon[3]      = 0; //bonus magic damage        
        mresist[3]      = 1; //base magic resist
        mr_bon[3]       = 0; //bonus magic resist
        accuracy[3]     = 55; //base accuracy
        acc_bon[3]      = 0; //bonus accuracy
        wlk_spd[3]      = 1.6; //walking speed;
        attack_type[3]  = "SWORD";
        attack_lvl[3]   = 0;
        attack_obj[3]   = obj_Sword2_Slash;
        weapon[3]       = spr_Warrior_Sword;
        spr_idle[3]     = spr_Warrior_Idle;
        spr_walk[3]     = spr_Warrior_Walk;
        spr_hurt[3]     = spr_Warrior_Hit;
        spr_dead[3]     = spr_Warrior_Corpse
        color[3]        = c_red;
        voice[3]        = snd_guy_voice;        
        break;
        
    case 2:
        name[3]         = "WARRIOR";
        bio[3]          = "Strong class#Can hit multiple foes";
        hpmax[3]        = 95;
        Warrior_Ability();        
        cooldown[3]     = 15*2;
        cooldownB[3]    = 60*12;
        cooldownC[3]    = 60*10;
        atk_spd[3]      = 0.25; //attack speed
        atk_dam[3]      = 6; //base damage
        dam_bon[3]      = 4; //bonus damage
        defense[3]      = 5; //base def
        def_bon[3]      = 5; //bonus def
        mag_dam[3]      = 1; //base magic damage
        mag_bon[3]      = 0; //bonus magic damage        
        mresist[3]      = 1; //base magic resist
        mr_bon[3]       = 0; //bonus magic resist
        accuracy[3]     = 60; //base accuracy
        acc_bon[3]      = 0; //bonus accuracy
        wlk_spd[3]      = 1.7; //walking speed;
        attack_type[3]  = "SWORD";
        attack_lvl[3]   = 0;
        attack_obj[3]   = obj_Sword2_Slash;
        weapon[3]       = spr_Warrior_Sword;
        spr_idle[3]     = spr_Warrior_Idle;
        spr_walk[3]     = spr_Warrior_Walk;
        spr_hurt[3]     = spr_Warrior_Hit;
        spr_dead[3]     = spr_Warrior_Corpse
        color[3]        = c_red;
        voice[3]        = snd_guy_voice;
        break;
        
    case 3:
        name[3]         = "WARRIOR";
        bio[3]          = "Strong class#Can hit multiple foes";
        hpmax[3]        = 100;
        Warrior_Ability();       
        cooldown[3]     = 15*2;
        cooldownB[3]    = 60*12;
        cooldownC[3]    = 60*10;
        atk_spd[3]      = 0.25; //attack speed
        atk_dam[3]      = 8; //base damage
        dam_bon[3]      = 4; //bonus damage
        defense[3]      = 5; //base def
        def_bon[3]      = 6; //bonus def
        mag_dam[3]      = 2; //base magic damage
        mag_bon[3]      = 0; //bonus magic damage        
        mresist[3]      = 1; //base magic resist
        mr_bon[3]       = 0; //bonus magic resist
        accuracy[3]     = 65; //base accuracy
        acc_bon[3]      = 0; //bonus accuracy
        wlk_spd[3]      = 1.8; //walking speed;
        attack_type[3]  = "SWORD";
        attack_lvl[3]   = 0;
        attack_obj[3]   = obj_Sword2_Slash;
        weapon[3]       = spr_Warrior_Sword;
        spr_idle[3]     = spr_Warrior_Idle;
        spr_walk[3]     = spr_Warrior_Walk;
        spr_hurt[3]     = spr_Warrior_Hit;
        spr_dead[3]     = spr_Warrior_Corpse
        color[3]        = c_red;
        voice[3]        = snd_guy_voice;
        break;

    case 4:
        name[3]         = "WARRIOR";
        bio[3]          = "Strong class#Can hit multiple foes";
        hpmax[3]        = 110;
        Warrior_Ability();        
        cooldown[3]     = 15*2;
        cooldownB[3]    = 60*12;
        cooldownC[3]    = 60*10;
        atk_spd[3]      = 0.25; //attack speed
        atk_dam[3]      = 10; //base damage
        dam_bon[3]      = 4; //bonus damage
        defense[3]      = 6; //base def
        def_bon[3]      = 6; //bonus def
        mag_dam[3]      = 2; //base magic damage
        mag_bon[3]      = 0; //bonus magic damage        
        mresist[3]      = 1; //base magic resist
        mr_bon[3]       = 0; //bonus magic resist
        accuracy[3]     = 70; //base accuracy
        acc_bon[3]      = 0; //bonus accuracy
        wlk_spd[3]      = 1.8; //walking speed;
        attack_type[3]  = "SWORD";
        attack_lvl[3]   = 0;
        attack_obj[3]   = obj_Sword2_Slash;
        weapon[3]       = spr_Warrior_Sword;
        spr_idle[3]     = spr_Warrior_Idle;
        spr_walk[3]     = spr_Warrior_Walk;
        spr_hurt[3]     = spr_Warrior_Hit;
        spr_dead[3]     = spr_Warrior_Corpse
        color[3]        = c_red;
        voice[3]        = snd_guy_voice;
        break;
        
    case 5:
        name[3]         = "KNIGHT";
        bio[3]          = "Strong class#Can hit multiple foes";
        hpmax[3]        = 120;
        Warrior_Ability();        
        cooldown[3]     = 15*2;
        cooldownB[3]    = 60*12;
        cooldownC[3]    = 60*10;
        atk_spd[3]      = 0.25; //attack speed
        atk_dam[3]      = 12; //base damage
        dam_bon[3]      = 6; //bonus damage
        defense[3]      = 8; //base def
        def_bon[3]      = 6; //bonus def
        mag_dam[3]      = 3; //base magic damage
        mag_bon[3]      = 0; //bonus magic damage        
        mresist[3]      = 1; //base magic resist
        mr_bon[3]       = 0; //bonus magic resist
        accuracy[3]     = 70; //base accuracy
        acc_bon[3]      = 0; //bonus accuracy
        wlk_spd[3]      = 1.8; //walking speed;
        attack_type[3]  = "SWORD";
        attack_lvl[3]   = 0;
        attack_obj[3]   = obj_Sword2_Slash;
        weapon[3]       = spr_Knight_Sword;
        spr_idle[3]     = spr_Knight;
        spr_walk[3]     = spr_Knight_Walk;
        spr_hurt[3]     = spr_Knight_Hit;
        spr_dead[3]     = spr_Knight_Corpse
        color[3]        = c_red;
        voice[3]        = snd_guy_voice;
        break;                                                
}*/
