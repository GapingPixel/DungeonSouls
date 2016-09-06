gml_pragma("forceinline");
if rank[7] == 5
{
    name[7]         = "DESTROYER";
    bio[7]          = "Armor focused#Uses two weapons";
    hpmax[7]        = 150;
    Nightblade_Ability()        
    cooldown[7]     = 65;
    cooldownB[7]    = 60*6;
    cooldownC[7]    = 60*3;
    atk_spd[7]      = 1; //attack speed
    atk_dam[7]      = 8; //base damage
    dam_bon[7]      = 0; //bonus damage
    defense[7]      = 5; //base def
    def_bon[7]      = 3; //bonus def
    mag_dam[7]      = 0; //base magic damage
    mag_bon[7]      = 0; //bonus magic damage        
    mresist[7]      = 1; //base magic resist
    mr_bon[7]       = 0; //bonus magic resist
    accuracy[7]     = 90; //base accuracy
    acc_bon[7]      = 0; //bonus accuracy
    wlk_spd[7]      = 1.48; //walking speed;
    attack_type[7]  = "NIGHT";
    attack_lvl[7]   = 0;
    attack_obj[7]   = obj_Necro_Shoot;
    weapon[7]       = spr_Destroyer_Hammer
    spr_idle[7]     = spr_Destroyer
    spr_walk[7]     = spr_Destroyer_Walk
    spr_hurt[7]     = spr_Destroyer_Hit
    spr_dead[7]     = spr_Destroyer_Corpse
    color[7]        = make_color_rgb(219,128,230);
    voice[7]        = snd_guy_voice;
}else
{
    name[7]         = "NIGHTBLADE";
    bio[7]          = "Armor focused#Uses two weapons";
    hpmax[7]        = 100;
    Nightblade_Ability()
    cooldown[7]     = 65;
    cooldownB[7]    = 60*6;
    cooldownC[7]    = 60*3;
    atk_spd[7]      = 1; //attack speed
    atk_dam[7]      = 8; //base damage
    dam_bon[7]      = 0; //bonus damage
    defense[7]      = 5; //base def
    def_bon[7]      = 3; //bonus def
    mag_dam[7]      = 0; //base magic damage
    mag_bon[7]      = 0; //bonus magic damage        
    mresist[7]      = 1; //base magic resist
    mr_bon[7]       = 0; //bonus magic resist
    accuracy[7]     = 90; //base accuracy
    acc_bon[7]      = 0; //bonus accuracy
    wlk_spd[7]      = 1.48; //walking speed;
    attack_type[7]  = "NIGHT";
    attack_lvl[7]   = 0;
    attack_obj[7]   = obj_Necro_Shoot;
    weapon[7]       = spr_Nightblade_Hammer
    spr_idle[7]     = spr_Nightblade
    spr_walk[7]     = spr_Nightblade_Walk
    spr_hurt[7]     = spr_Nightblade_Hit
    spr_dead[7]     = spr_Nightblade_Corpse
    color[7]        = make_color_rgb(219,128,230);
    voice[7]        = snd_guy_voice;
}
/*switch(rank[7])
{
    case 0:
        name[7]         = "NIGHTBLADE";
        bio[7]          = "Armor focused#Uses two weapons";
        hpmax[7]        = 100;
        Nightblade_Ability()
        cooldown[7]     = 65;
        cooldownB[7]    = 60*6;
        cooldownC[7]    = 60*3;
        atk_spd[7]      = 1; //attack speed
        atk_dam[7]      = 8; //base damage
        dam_bon[7]      = 0; //bonus damage
        defense[7]      = 5; //base def
        def_bon[7]      = 3; //bonus def
        mag_dam[7]      = 0; //base magic damage
        mag_bon[7]      = 0; //bonus magic damage        
        mresist[7]      = 1; //base magic resist
        mr_bon[7]       = 0; //bonus magic resist
        accuracy[7]     = 90; //base accuracy
        acc_bon[7]      = 0; //bonus accuracy
        wlk_spd[7]      = 1.48; //walking speed;
        attack_type[7]  = "NIGHT";
        attack_lvl[7]   = 0;
        attack_obj[7]   = obj_Necro_Shoot;
        weapon[7]       = spr_Nightblade_Hammer
        spr_idle[7]     = spr_Nightblade
        spr_walk[7]     = spr_Nightblade_Walk
        spr_hurt[7]     = spr_Nightblade_Hit
        spr_dead[7]     = spr_Nightblade_Corpse
        color[7]        = make_color_rgb(219,128,230);
        voice[7]        = snd_guy_voice;
        break;
        
    case 1:
        name[7]         = "NIGHTBLADE";
        bio[7]          = "Armor focused#Uses two weapons";
        hpmax[7]        = 110;
        Nightblade_Ability()        
        cooldown[7]     = 64;
        cooldownB[7]    = 60*6;
        cooldownC[7]    = 60*3;
        atk_spd[7]      = 1; //attack speed
        atk_dam[7]      = 9; //base damage
        dam_bon[7]      = 0; //bonus damage
        defense[7]      = 5; //base def
        def_bon[7]      = 5; //bonus def
        mag_dam[7]      = 0; //base magic damage
        mag_bon[7]      = 0; //bonus magic damage        
        mresist[7]      = 1; //base magic resist
        mr_bon[7]       = 0; //bonus magic resist
        accuracy[7]     = 92; //base accuracy
        acc_bon[7]      = 0; //bonus accuracy
        wlk_spd[7]      = 1.48; //walking speed;
        attack_type[7]  = "NIGHT";
        attack_lvl[7]   = 0;
        attack_obj[7]   = obj_Necro_Shoot;
        weapon[7]       = spr_Nightblade_Hammer
        spr_idle[7]     = spr_Nightblade
        spr_walk[7]     = spr_Nightblade_Walk
        spr_hurt[7]     = spr_Nightblade_Hit
        spr_dead[7]     = spr_Nightblade_Corpse
        color[7]        = make_color_rgb(219,128,230);
        voice[7]        = snd_guy_voice;
        break;
        
    case 2:
        name[7]         = "NIGHTBLADE";
        bio[7]          = "Armor focused#Uses two weapons";
        hpmax[7]        = 120;
        Nightblade_Ability()        
        cooldown[7]     = 64;
        cooldownB[7]    = 60*6;
        cooldownC[7]    = 60*3;
        atk_spd[7]      = 1; //attack speed
        atk_dam[7]      = 10; //base damage
        dam_bon[7]      = 0; //bonus damage
        defense[7]      = 8; //base def
        def_bon[7]      = 8; //bonus def
        mag_dam[7]      = 0; //base magic damage
        mag_bon[7]      = 0; //bonus magic damage        
        mresist[7]      = 1; //base magic resist
        mr_bon[7]       = 0; //bonus magic resist
        accuracy[7]     = 94; //base accuracy
        acc_bon[7]      = 0; //bonus accuracy
        wlk_spd[7]      = 1.48; //walking speed;
        attack_type[7]  = "NIGHT";
        attack_lvl[7]   = 0;
        attack_obj[7]   = obj_Necro_Shoot;
        weapon[7]       = spr_Nightblade_Hammer
        spr_idle[7]     = spr_Nightblade
        spr_walk[7]     = spr_Nightblade_Walk
        spr_hurt[7]     = spr_Nightblade_Hit
        spr_dead[7]     = spr_Nightblade_Corpse
        color[7]        = make_color_rgb(219,128,230);
        voice[7]        = snd_guy_voice;
        break;
        
    case 3:
        name[7]         = "NIGHTBLADE";
        bio[7]          = "Armor focused#Uses two weapons";
        hpmax[7]        = 125;
        Nightblade_Ability()        
        cooldown[7]     = 64;
        cooldownB[7]    = 60*6;
        cooldownC[7]    = 60*3;
        atk_spd[7]      = 1; //attack speed
        atk_dam[7]      = 11; //base damage
        dam_bon[7]      = 0; //bonus damage
        defense[7]      = 10; //base def
        def_bon[7]      = 5; //bonus def
        mag_dam[7]      = 0; //base magic damage
        mag_bon[7]      = 0; //bonus magic damage        
        mresist[7]      = 1; //base magic resist
        mr_bon[7]       = 0; //bonus magic resist
        accuracy[7]     = 96; //base accuracy
        acc_bon[7]      = 0; //bonus accuracy
        wlk_spd[7]      = 1.48; //walking speed;
        attack_type[7]  = "NIGHT";
        attack_lvl[7]   = 0;
        attack_obj[7]   = obj_Necro_Shoot;
        weapon[7]       = spr_Nightblade_Hammer
        spr_idle[7]     = spr_Nightblade
        spr_walk[7]     = spr_Nightblade_Walk
        spr_hurt[7]     = spr_Nightblade_Hit
        spr_dead[7]     = spr_Nightblade_Corpse
        color[7]        = make_color_rgb(219,128,230);
        voice[7]        = snd_guy_voice;
        break;
        
    case 4:
        name[7]         = "NIGHTBLADE";
        bio[7]          = "Armor focused#Uses two weapons";
        hpmax[7]        = 130;
        Nightblade_Ability()        
        cooldown[7]     = 64;
        cooldownB[7]    = 60*6;
        cooldownC[7]    = 60*3;
        atk_spd[7]      = 1; //attack speed
        atk_dam[7]      = 13; //base damage
        dam_bon[7]      = 0; //bonus damage
        defense[7]      = 15; //base def
        def_bon[7]      = 6; //bonus def
        mag_dam[7]      = 0; //base magic damage
        mag_bon[7]      = 0; //bonus magic damage        
        mresist[7]      = 1; //base magic resist
        mr_bon[7]       = 0; //bonus magic resist
        accuracy[7]     = 98; //base accuracy
        acc_bon[7]      = 0; //bonus accuracy
        wlk_spd[7]      = 1.48; //walking speed;
        attack_type[7]  = "NIGHT";
        attack_lvl[7]   = 0;
        attack_obj[7]   = obj_Necro_Shoot;
        weapon[7]       = spr_Nightblade_Hammer
        spr_idle[7]     = spr_Nightblade
        spr_walk[7]     = spr_Nightblade_Walk
        spr_hurt[7]     = spr_Nightblade_Hit
        spr_dead[7]     = spr_Nightblade_Corpse
        color[7]        = make_color_rgb(219,128,230);
        voice[7]        = snd_guy_voice;
        break;
        
    case 5:
        name[7]         = "DESTROYER";
        bio[7]          = "Armor focused#Uses two weapons";
        hpmax[7]        = 150;
        Nightblade_Ability()        
        cooldown[7]     = 64;
        cooldownB[7]    = 60*6;
        cooldownC[7]    = 60*3;
        atk_spd[7]      = 1; //attack speed
        atk_dam[7]      = 15; //base damage
        dam_bon[7]      = 0; //bonus damage
        defense[7]      = 20; //base def
        def_bon[7]      = 3; //bonus def
        mag_dam[7]      = 0; //base magic damage
        mag_bon[7]      = 0; //bonus magic damage        
        mresist[7]      = 1; //base magic resist
        mr_bon[7]       = 0; //bonus magic resist
        accuracy[7]     = 100; //base accuracy
        acc_bon[7]      = 0; //bonus accuracy
        wlk_spd[7]      = 1.7; //walking speed;
        attack_type[7]  = "NIGHT";
        attack_lvl[7]   = 0;
        attack_obj[7]   = obj_Necro_Shoot;
        weapon[7]       = spr_Destroyer_Hammer
        spr_idle[7]     = spr_Destroyer
        spr_walk[7]     = spr_Destroyer_Walk
        spr_hurt[7]     = spr_Destroyer_Hit
        spr_dead[7]     = spr_Destroyer_Corpse
        color[7]        = make_color_rgb(219,128,230);
        voice[7]        = snd_guy_voice;
        break;                                        
}
