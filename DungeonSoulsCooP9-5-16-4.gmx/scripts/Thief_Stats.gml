gml_pragma("forceinline");
if rank[2] == 5
{
    name[2]         = "ROGUE";
    bio[2]          = "Fastest of all#Higher critical chance";
    hpmax[2]        = 65;
    Thief_Ability();        
    cooldown[2]     = 5*2;
    cooldownB[2]    = 60*8;
    cooldownC[2]    = 60*14;
    atk_spd[2]      = 8.4; //attack speed
    atk_dam[2]      = 8; //base damage
    dam_bon[2]      = 1; //bonus damage
    defense[2]      = 2; //base def
    def_bon[2]      = 0; //bonus def
    mag_dam[2]      = 1; //base magic damage
    mag_bon[2]      = 0; //bonus magic damage        
    mresist[2]      = 1; //base magic resist
    mr_bon[2]       = 0; //bonus magic resist
    accuracy[2]     = 85; //base accuracy
    acc_bon[2]      = 0; //bonus accuracy
    wlk_spd[2]      = 2.3; //walking speed;
    attack_type[2]  = "KNIFE";
    attack_lvl[2]   = 0;
    attack_obj[2]   = obj_Dagger;
    weapon[2]       = spr_Rogue_Knife;
    spr_idle[2]     = spr_Rogue
    spr_walk[2]     = spr_Rogue_Walk
    spr_hurt[2]     = spr_Rogue_Hit
    spr_dead[2]     = spr_Rogue_Corpse
    color[2]        = merge_color(c_blue,c_aqua,0.5);
    voice[2]        = snd_guy_voice;
}else
{
    name[2]         = "THIEF";
    bio[2]          = "Fastest of all#Higher critical chance";
    hpmax[2]        = 40;
    Thief_Ability();
    cooldown[2]     = 5*2;
    cooldownB[2]    = 60*8;
    cooldownC[2]    = 60*14;
    atk_spd[2]      = 8; //attack speed
    atk_dam[2]      = 3; //base damage
    dam_bon[2]      = 1; //bonus damage
    defense[2]      = 1; //base def
    def_bon[2]      = 0; //bonus def
    mag_dam[2]      = 2; //base magic damage
    mag_bon[2]      = 0; //bonus magic damage        
    mresist[2]      = 1; //base magic resist
    mr_bon[2]       = 0; //bonus magic resist
    accuracy[2]     = 80; //base accuracy
    acc_bon[2]      = 0; //bonus accuracy
    wlk_spd[2]      = 2; //walking speed;
    attack_type[2]  = "KNIFE";
    attack_lvl[2]   = 0;
    attack_obj[2]   = obj_Dagger;
    weapon[2]       = spr_Thief_Knife;
    spr_idle[2]     = spr_Thief_Idle
    spr_walk[2]     = spr_Thief_Walk
    spr_hurt[2]     = spr_Thief_Hit
    spr_dead[2]     = spr_Thief_Corpse
    color[2]        = merge_color(c_blue,c_aqua,0.5);
    voice[2]        = snd_guy_voice;
}

/*switch(rank[2])
{
    case 0:
        name[2]         = "THIEF";
        bio[2]          = "Fastest of all#Higher critical chance";
        hpmax[2]        = 40;
        Thief_Ability();
        cooldown[2]     = 5*2;
        cooldownB[2]    = 60*8;
        cooldownC[2]    = 60*14;
        atk_spd[2]      = 8; //attack speed
        atk_dam[2]      = 3; //base damage
        dam_bon[2]      = 1; //bonus damage
        defense[2]      = 1; //base def
        def_bon[2]      = 0; //bonus def
        mag_dam[2]      = 0; //base magic damage
        mag_bon[2]      = 0; //bonus magic damage        
        mresist[2]      = 1; //base magic resist
        mr_bon[2]       = 0; //bonus magic resist
        accuracy[2]     = 80; //base accuracy
        acc_bon[2]      = 0; //bonus accuracy
        wlk_spd[2]      = 2; //walking speed;
        attack_type[2]  = "KNIFE";
        attack_lvl[2]   = 0;
        attack_obj[2]   = obj_Dagger;
        weapon[2]       = spr_Thief_Knife;
        spr_idle[2]     = spr_Thief_Idle
        spr_walk[2]     = spr_Thief_Walk
        spr_hurt[2]     = spr_Thief_Hit
        spr_dead[2]     = spr_Thief_Corpse
        color[2]        = merge_color(c_blue,c_aqua,0.5);
        voice[2]        = snd_guy_voice;
        break;
        
    case 1:
        name[2]         = "THIEF";
        bio[2]          = "Fastest of all#Higher critical chance";
        hpmax[2]        = 45;
        Thief_Ability();        
        cooldown[2]     = 5*2;
        cooldownB[2]    = 60*8;
        cooldownC[2]    = 60*14;
        atk_spd[2]      = 8; //attack speed
        atk_dam[2]      = 4; //base damage
        dam_bon[2]      = 1; //bonus damage
        defense[2]      = 1; //base def
        def_bon[2]      = 0; //bonus def
        mag_dam[2]      = 0; //base magic damage
        mag_bon[2]      = 0; //bonus magic damage        
        mresist[2]      = 1; //base magic resist
        mr_bon[2]       = 0; //bonus magic resist
        accuracy[2]     = 81; //base accuracy
        acc_bon[2]      = 0; //bonus accuracy
        wlk_spd[2]      = 2; //walking speed;
        attack_type[2]  = "KNIFE";
        attack_lvl[2]   = 0;
        attack_obj[2]   = obj_Dagger;
        weapon[2]       = spr_Thief_Knife;
        spr_idle[2]     = spr_Thief_Idle
        spr_walk[2]     = spr_Thief_Walk
        spr_hurt[2]     = spr_Thief_Hit
        spr_dead[2]     = spr_Thief_Corpse
        color[2]        = merge_color(c_blue,c_aqua,0.5);
        voice[2]        = snd_guy_voice;
        break;
        
    case 2:
        name[2]         = "THIEF";
        bio[2]          = "Fastest of all#Higher critical chance";
        hpmax[2]        = 50;
        Thief_Ability();        
        cooldown[2]     = 5*2;
        cooldownB[2]    = 60*8;
        cooldownC[2]    = 60*14;
        atk_spd[2]      = 8.2; //attack speed
        atk_dam[2]      = 5; //base damage
        dam_bon[2]      = 1; //bonus damage
        defense[2]      = 1; //base def
        def_bon[2]      = 0; //bonus def
        mag_dam[2]      = 0; //base magic damage
        mag_bon[2]      = 0; //bonus magic damage        
        mresist[2]      = 1; //base magic resist
        mr_bon[2]       = 0; //bonus magic resist
        accuracy[2]     = 82; //base accuracy
        acc_bon[2]      = 0; //bonus accuracy
        wlk_spd[2]      = 2.1; //walking speed;
        attack_type[2]  = "KNIFE";
        attack_lvl[2]   = 0;
        attack_obj[2]   = obj_Dagger;
        weapon[2]       = spr_Thief_Knife;
        spr_idle[2]     = spr_Thief_Idle
        spr_walk[2]     = spr_Thief_Walk
        spr_hurt[2]     = spr_Thief_Hit
        spr_dead[2]     = spr_Thief_Corpse
        color[2]        = merge_color(c_blue,c_aqua,0.5);
        voice[2]        = snd_guy_voice;
        break;
        
    case 3:
        name[2]         = "THIEF";
        bio[2]          = "Fastest of all#Higher critical chance";
        hpmax[2]        = 55;
        Thief_Ability();        
        cooldown[2]     = 5*2;
        cooldownB[2]    = 60*8;
        cooldownC[2]    = 60*14;
        atk_spd[2]      = 8.3; //attack speed
        atk_dam[2]      = 6; //base damage
        dam_bon[2]      = 1; //bonus damage
        defense[2]      = 1; //base def
        def_bon[2]      = 0; //bonus def
        mag_dam[2]      = 0; //base magic damage
        mag_bon[2]      = 0; //bonus magic damage        
        mresist[2]      = 1; //base magic resist
        mr_bon[2]       = 0; //bonus magic resist
        accuracy[2]     = 83; //base accuracy
        acc_bon[2]      = 0; //bonus accuracy
        wlk_spd[2]      = 2.2; //walking speed;
        attack_type[2]  = "KNIFE";
        attack_lvl[2]   = 0;
        attack_obj[2]   = obj_Dagger;
        weapon[2]       = spr_Thief_Knife;
        spr_idle[2]     = spr_Thief_Idle
        spr_walk[2]     = spr_Thief_Walk
        spr_hurt[2]     = spr_Thief_Hit
        spr_dead[2]     = spr_Thief_Corpse
        color[2]        = merge_color(c_blue,c_aqua,0.5);
        voice[2]        = snd_guy_voice;
        break;
        
    case 4:
        name[2]         = "THIEF";
        bio[2]          = "Fastest of all#Higher critical chance";
        hpmax[2]        = 60;
        Thief_Ability();        
        cooldown[2]     = 5*2;
        cooldownB[2]    = 60*8;
        cooldownC[2]    = 60*14;
        atk_spd[2]      = 8.4; //attack speed
        atk_dam[2]      = 7; //base damage
        dam_bon[2]      = 1; //bonus damage
        defense[2]      = 1; //base def
        def_bon[2]      = 0; //bonus def
        mag_dam[2]      = 0; //base magic damage
        mag_bon[2]      = 0; //bonus magic damage        
        mresist[2]      = 1; //base magic resist
        mr_bon[2]       = 0; //bonus magic resist
        accuracy[2]     = 84; //base accuracy
        acc_bon[2]      = 0; //bonus accuracy
        wlk_spd[2]      = 2.2; //walking speed;
        attack_type[2]  = "KNIFE";
        attack_lvl[2]   = 0;
        attack_obj[2]   = obj_Dagger;
        weapon[2]       = spr_Thief_Knife;
        spr_idle[2]     = spr_Thief_Idle
        spr_walk[2]     = spr_Thief_Walk
        spr_hurt[2]     = spr_Thief_Hit
        spr_dead[2]     = spr_Thief_Corpse
        color[2]        = merge_color(c_blue,c_aqua,0.5);
        voice[2]        = snd_guy_voice;
        break;
        
    case 5:
        name[2]         = "ROGUE";
        bio[2]          = "Fastest of all#Higher critical chance";
        hpmax[2]        = 65;
        Thief_Ability();        
        cooldown[2]     = 5*2;
        cooldownB[2]    = 60*8;
        cooldownC[2]    = 60*14;
        atk_spd[2]      = 8.4; //attack speed
        atk_dam[2]      = 8; //base damage
        dam_bon[2]      = 1; //bonus damage
        defense[2]      = 2; //base def
        def_bon[2]      = 0; //bonus def
        mag_dam[2]      = 0; //base magic damage
        mag_bon[2]      = 0; //bonus magic damage        
        mresist[2]      = 1; //base magic resist
        mr_bon[2]       = 0; //bonus magic resist
        accuracy[2]     = 85; //base accuracy
        acc_bon[2]      = 0; //bonus accuracy
        wlk_spd[2]      = 2.3; //walking speed;
        attack_type[2]  = "KNIFE";
        attack_lvl[2]   = 0;
        attack_obj[2]   = obj_Dagger;
        weapon[2]       = spr_Rogue_Knife;
        spr_idle[2]     = spr_Rogue
        spr_walk[2]     = spr_Rogue_Walk
        spr_hurt[2]     = spr_Rogue_Hit
        spr_dead[2]     = spr_Rogue_Corpse
        color[2]        = merge_color(c_blue,c_aqua,0.5);
        voice[2]        = snd_guy_voice;
        break;                                        
}*/
