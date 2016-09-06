gml_pragma("forceinline");
if rank[5] == 5
{
    name[5]         = "PALADIN";
    bio[5]          = "Can multiply projectile#Regenerates";
    hpmax[5]        = 100;
    Cleric_Ability();       
    cooldown[5]     = 18*2;
    cooldownB[5]    = 60*9;
    cooldownC[5]    = 60*15;
    atk_spd[5]      = 8; //attack speed
    atk_dam[5]      = 0; //base damage
    dam_bon[5]      = 0; //bonus damage
    defense[5]      = 1; //base def
    def_bon[5]      = 0; //bonus def
    mag_dam[5]      = 6; //base magic damage
    mag_bon[5]      = 0; //bonus magic damage        
    mresist[5]      = 3; //base magic resist
    mr_bon[5]       = 0; //bonus magic resist
    accuracy[5]     = 80; //base accuracy
    acc_bon[5]      = 0; //bonus accuracy
    wlk_spd[5]      = 1.65; //walking speed;
    attack_type[5]  = "HEAL";
    attack_lvl[5]   = 0;
    attack_obj[5]   = obj_Heal;
    weapon[5]       = spr_Paladin_Staff
    spr_idle[5]     = spr_Paladin
    spr_walk[5]     = spr_Paladin_Walk
    spr_hurt[5]     = spr_Paladin_Hit
    spr_dead[5]     = spr_Paladin_Corpse
    color[5]        = c_white;
    voice[5]        = snd_guy_voice;
}else
{
    name[5]         = "CLERIC";
    bio[5]          = "Can multiply projectile#Regenerates";
    hpmax[5]        = 50;
    Cleric_Ability();
    cooldown[5]     = 18*2;
    cooldownB[5]    = 60*9;
    cooldownC[5]    = 60*15;
    atk_spd[5]      = 8; //attack speed
    atk_dam[5]      = 0; //base damage
    dam_bon[5]      = 0; //bonus damage
    defense[5]      = 1; //base def
    def_bon[5]      = 0; //bonus def
    mag_dam[5]      = 6; //base magic damage
    mag_bon[5]      = 0; //bonus magic damage        
    mresist[5]      = 3; //base magic resist
    mr_bon[5]       = 0; //bonus magic resist
    accuracy[5]     = 80; //base accuracy
    acc_bon[5]      = 0; //bonus accuracy
    wlk_spd[5]      = 1.65; //walking speed;
    attack_type[5]  = "HEAL";
    attack_lvl[5]   = 0;
    attack_obj[5]   = obj_Heal;
    weapon[5]       = spr_Healer_Staff
    spr_idle[5]     = spr_Healer_Idle
    spr_walk[5]     = spr_Healer_Walk
    spr_hurt[5]     = spr_Healer_Hit
    spr_dead[5]     = spr_Healer_Corpse
    color[5]        = c_white;
    voice[5]        = snd_guy_voice;
}
/*switch(rank[5])
{
    case 0:
        name[5]         = "CLERIC";
        bio[5]          = "Can multiply projectile#Regenerates";
        hpmax[5]        = 50;
        Cleric_Ability();
        cooldown[5]     = 18*2;
        cooldownB[5]    = 60*20;
        cooldownC[5]    = 60*15;
        atk_spd[5]      = 8; //attack speed
        atk_dam[5]      = 0; //base damage
        dam_bon[5]      = 0; //bonus damage
        defense[5]      = 1; //base def
        def_bon[5]      = 0; //bonus def
        mag_dam[5]      = 6; //base magic damage
        mag_bon[5]      = 0; //bonus magic damage        
        mresist[5]      = 3; //base magic resist
        mr_bon[5]       = 0; //bonus magic resist
        accuracy[5]     = 80; //base accuracy
        acc_bon[5]      = 0; //bonus accuracy
        wlk_spd[5]      = 1.65; //walking speed;
        attack_type[5]  = "HEAL";
        attack_lvl[5]   = 0;
        attack_obj[5]   = obj_Heal;
        weapon[5]       = spr_Healer_Staff
        spr_idle[5]     = spr_Healer_Idle
        spr_walk[5]     = spr_Healer_Walk
        spr_hurt[5]     = spr_Healer_Hit
        spr_dead[5]     = spr_Healer_Corpse
        color[5]        = c_white;
        voice[5]        = snd_guy_voice;
        break;
        
    case 1:
        name[5]         = "CLERIC";
        bio[5]          = "Can multiply projectile#Regenerates";
        hpmax[5]        = 55;
        Cleric_Ability();        
        cooldown[5]     = 18*2;
        cooldownB[5]    = 60*20;
        cooldownC[5]    = 60*15;
        atk_spd[5]      = 8; //attack speed
        atk_dam[5]      = 0; //base damage
        dam_bon[5]      = 0; //bonus damage
        defense[5]      = 1; //base def
        def_bon[5]      = 0; //bonus def
        mag_dam[5]      = 9; //base magic damage
        mag_bon[5]      = 0; //bonus magic damage        
        mresist[5]      = 3; //base magic resist
        mr_bon[5]       = 0; //bonus magic resist
        accuracy[5]     = 81; //base accuracy
        acc_bon[5]      = 0; //bonus accuracy
        wlk_spd[5]      = 1.65; //walking speed;
        attack_type[5]  = "HEAL";
        attack_lvl[5]   = 0;
        attack_obj[5]   = obj_Heal;
        weapon[5]       = spr_Healer_Staff
        spr_idle[5]     = spr_Healer_Idle
        spr_walk[5]     = spr_Healer_Walk
        spr_hurt[5]     = spr_Healer_Hit
        spr_dead[5]     = spr_Healer_Corpse
        color[5]        = c_white;
        voice[5]        = snd_guy_voice;
        break;
        
    case 2:
        name[5]         = "CLERIC";
        bio[5]          = "Can multiply projectile#Regenerates";
        hpmax[5]        = 70;
        Cleric_Ability();        
        cooldown[5]     = 18*2;
        cooldownB[5]    = 60*20;
        cooldownC[5]    = 60*15;
        atk_spd[5]      = 8; //attack speed
        atk_dam[5]      = 0; //base damage
        dam_bon[5]      = 0; //bonus damage
        defense[5]      = 1; //base def
        def_bon[5]      = 0; //bonus def
        mag_dam[5]      = 12; //base magic damage
        mag_bon[5]      = 0; //bonus magic damage        
        mresist[5]      = 4; //base magic resist
        mr_bon[5]       = 0; //bonus magic resist
        accuracy[5]     = 82; //base accuracy
        acc_bon[5]      = 0; //bonus accuracy
        wlk_spd[5]      = 1.65; //walking speed;
        attack_type[5]  = "HEAL";
        attack_lvl[5]   = 0;
        attack_obj[5]   = obj_Heal;
        weapon[5]       = spr_Healer_Staff
        spr_idle[5]     = spr_Healer_Idle
        spr_walk[5]     = spr_Healer_Walk
        spr_hurt[5]     = spr_Healer_Hit
        spr_dead[5]     = spr_Healer_Corpse
        color[5]        = c_white;
        voice[5]        = snd_guy_voice;
        break;
        
    case 3:
        name[5]         = "CLERIC";
        bio[5]          = "Can multiply projectile#Regenerates";
        hpmax[5]        = 85;
        Cleric_Ability();       
        cooldown[5]     = 18*2;
        cooldownB[5]    = 60*18;
        cooldownC[5]    = 60*15;
        atk_spd[5]      = 8; //attack speed
        atk_dam[5]      = 0; //base damage
        dam_bon[5]      = 0; //bonus damage
        defense[5]      = 1; //base def
        def_bon[5]      = 0; //bonus def
        mag_dam[5]      = 15; //base magic damage
        mag_bon[5]      = 0; //bonus magic damage        
        mresist[5]      = 4; //base magic resist
        mr_bon[5]       = 0; //bonus magic resist
        accuracy[5]     = 83; //base accuracy
        acc_bon[5]      = 0; //bonus accuracy
        wlk_spd[5]      = 1.65; //walking speed;
        attack_type[5]  = "HEAL";
        attack_lvl[5]   = 0;
        attack_obj[5]   = obj_Heal;
        weapon[5]       = spr_Healer_Staff
        spr_idle[5]     = spr_Healer_Idle
        spr_walk[5]     = spr_Healer_Walk
        spr_hurt[5]     = spr_Healer_Hit
        spr_dead[5]     = spr_Healer_Corpse
        color[5]        = c_white;
        voice[5]        = snd_guy_voice;
        break;
        
    case 4:
        name[5]         = "CLERIC";
        bio[5]          = "Can multiply projectile#Regenerates";
        hpmax[5]        = 95;
        Cleric_Ability();        
        cooldown[5]     = 18*2;
        cooldownB[5]    = 60*17;
        cooldownC[5]    = 60*15;
        atk_spd[5]      = 8; //attack speed
        atk_dam[5]      = 0; //base damage
        dam_bon[5]      = 0; //bonus damage
        defense[5]      = 2; //base def
        def_bon[5]      = 0; //bonus def
        mag_dam[5]      = 18; //base magic damage
        mag_bon[5]      = 0; //bonus magic damage        
        mresist[5]      = 4; //base magic resist
        mr_bon[5]       = 0; //bonus magic resist
        accuracy[5]     = 84; //base accuracy
        acc_bon[5]      = 0; //bonus accuracy
        wlk_spd[5]      = 1.65; //walking speed;
        attack_type[5]  = "HEAL";
        attack_lvl[5]   = 0;
        attack_obj[5]   = obj_Heal;
        weapon[5]       = spr_Healer_Staff
        spr_idle[5]     = spr_Healer_Idle
        spr_walk[5]     = spr_Healer_Walk
        spr_hurt[5]     = spr_Healer_Hit
        spr_dead[5]     = spr_Healer_Corpse
        color[5]        = c_white;
        voice[5]        = snd_guy_voice;
        break;
        
    case 5:
        name[5]         = "PALADIN";
        bio[5]          = "Can multiply projectile#Regenerates";
        hpmax[5]        = 100;
        Cleric_Ability();       
        cooldown[5]     = 18*2;
        cooldownB[5]    = 60*17;
        cooldownC[5]    = 60*15;
        atk_spd[5]      = 8; //attack speed
        atk_dam[5]      = 0; //base damage
        dam_bon[5]      = 0; //bonus damage
        defense[5]      = 2; //base def
        def_bon[5]      = 0; //bonus def
        mag_dam[5]      = 21; //base magic damage
        mag_bon[5]      = 0; //bonus magic damage        
        mresist[5]      = 5; //base magic resist
        mr_bon[5]       = 0; //bonus magic resist
        accuracy[5]     = 85; //base accuracy
        acc_bon[5]      = 0; //bonus accuracy
        wlk_spd[5]      = 1.7; //walking speed;
        attack_type[5]  = "HEAL";
        attack_lvl[5]   = 0;
        attack_obj[5]   = obj_Heal;
        weapon[5]       = spr_Paladin_Staff
        spr_idle[5]     = spr_Paladin
        spr_walk[5]     = spr_Paladin_Walk
        spr_hurt[5]     = spr_Paladin_Hit
        spr_dead[5]     = spr_Paladin_Corpse
        color[5]        = c_white;
        voice[5]        = snd_guy_voice;
        break;                                        
}
