gml_pragma("forceinline");
if rank[6] == 5
{
    name[6]         = "RAVEN";
    bio[6]          = "Can increase attack#Summons skeletons";
    hpmax[6]        = 120;
    Necromancer_Ability()        
    cooldown[6]     = 18*2;
    cooldownB[6]    = 60*3;
    cooldownC[6]    = 60*15;
    atk_spd[6]      = 5; //attack speed
    atk_dam[6]      = 1; //base damage
    dam_bon[6]      = 0; //bonus damage
    defense[6]      = 1; //base def
    def_bon[6]      = 0; //bonus def
    mag_dam[6]      = 5; //base magic damage
    mag_bon[6]      = 3; //bonus magic damage        
    mresist[6]      = 1; //base magic resist
    mr_bon[6]       = 0; //bonus magic resist
    accuracy[6]     = 90; //base accuracy
    acc_bon[6]      = 0; //bonus accuracy
    wlk_spd[6]      = 1.65; //walking speed;
    attack_type[6]  = "NECRO";
    attack_lvl[6]   = 0;
    attack_obj[6]   = obj_Necro_Shoot;
    weapon[6]       = spr_Raven_Staff
    spr_idle[6]     = spr_Raven
    spr_walk[6]     = spr_Raven_Walk
    spr_hurt[6]     = spr_Raven_Hit
    spr_dead[6]     = spr_Raven_Corpse
    color[6]        = make_color_rgb(52,126,64);;
    voice[6]        = snd_guy_voice;
}else
{
    name[6]         = "NECROMANCER";
    bio[6]          = "Can increase attack#Summons skeletons";
    hpmax[6]        = 60;
    Necromancer_Ability()
    cooldown[6]     = 18*2;
    cooldownB[6]    = 60*3;
    cooldownC[6]    = 60*15;
    atk_spd[6]      = 5; //attack speed
    atk_dam[6]      = 1; //base damage
    dam_bon[6]      = 0; //bonus damage
    defense[6]      = 1; //base def
    def_bon[6]      = 0; //bonus def
    mag_dam[6]      = 5; //base magic damage
    mag_bon[6]      = 3; //bonus magic damage        
    mresist[6]      = 1; //base magic resist
    mr_bon[6]       = 0; //bonus magic resist
    accuracy[6]     = 90; //base accuracy
    acc_bon[6]      = 0; //bonus accuracy
    wlk_spd[6]      = 1.65; //walking speed;
    attack_type[6]  = "NECRO";
    attack_lvl[6]   = 0;
    attack_obj[6]   = obj_Necro_Shoot;
    weapon[6]       = spr_Necromancer_Staff
    spr_idle[6]     = spr_Necromancer
    spr_walk[6]     = spr_Necromancer_Walk
    spr_hurt[6]     = spr_Necromancer_Hit
    spr_dead[6]     = spr_Necromancer_Corpse
    color[6]        = make_color_rgb(52,126,64);;
    voice[6]        = snd_guy_voice;
}
/*switch(rank[6])
{
    case 0:
        name[6]         = "NECROMANCER";
        bio[6]          = "Can increase attack#Summons skeletons";
        hpmax[6]        = 60;
        Necromancer_Ability()
        cooldown[6]     = 18*2;
        cooldownB[6]    = 60*3;
        cooldownC[6]    = 60*15;
        atk_spd[6]      = 5; //attack speed
        atk_dam[6]      = 1; //base damage
        dam_bon[6]      = 0; //bonus damage
        defense[6]      = 1; //base def
        def_bon[6]      = 0; //bonus def
        mag_dam[6]      = 5; //base magic damage
        mag_bon[6]      = 3; //bonus magic damage        
        mresist[6]      = 1; //base magic resist
        mr_bon[6]       = 0; //bonus magic resist
        accuracy[6]     = 90; //base accuracy
        acc_bon[6]      = 0; //bonus accuracy
        wlk_spd[6]      = 1.65; //walking speed;
        attack_type[6]  = "NECRO";
        attack_lvl[6]   = 0;
        attack_obj[6]   = obj_Necro_Shoot;
        weapon[6]       = spr_Necromancer_Staff
        spr_idle[6]     = spr_Necromancer
        spr_walk[6]     = spr_Necromancer_Walk
        spr_hurt[6]     = spr_Necromancer_Hit
        spr_dead[6]     = spr_Necromancer_Corpse
        color[6]        = make_color_rgb(52,126,64);;
        voice[6]        = snd_guy_voice;
        break;
        
    case 1:
        name[6]         = "NECROMANCER";
        bio[6]          = "Can increase attack#Summons skeletons";
        hpmax[6]        = 70;
        Necromancer_Ability()        
        cooldown[6]     = 18*2;
        cooldownB[6]    = 60*3;
        cooldownC[6]    = 60*15;
        atk_spd[6]      = 5; //attack speed
        atk_dam[6]      = 2; //base damage
        dam_bon[6]      = 0; //bonus damage
        defense[6]      = 1; //base def
        def_bon[6]      = 0; //bonus def
        mag_dam[6]      = 5; //base magic damage
        mag_bon[6]      = 5; //bonus magic damage        
        mresist[6]      = 1; //base magic resist
        mr_bon[6]       = 0; //bonus magic resist
        accuracy[6]     = 92; //base accuracy
        acc_bon[6]      = 0; //bonus accuracy
        wlk_spd[6]      = 1.65; //walking speed;
        attack_type[6]  = "NECRO";
        attack_lvl[6]   = 0;
        attack_obj[6]   = obj_Necro_Shoot;
        weapon[6]       = spr_Necromancer_Staff
        spr_idle[6]     = spr_Necromancer
        spr_walk[6]     = spr_Necromancer_Walk
        spr_hurt[6]     = spr_Necromancer_Hit
        spr_dead[6]     = spr_Necromancer_Corpse
        color[6]        = make_color_rgb(52,126,64);
        voice[6]        = snd_guy_voice;
        break;
        
    case 2:
        name[6]         = "NECROMANCER";
        bio[6]          = "Can increase attack#Summons skeletons";
        hpmax[6]        = 80;
        Necromancer_Ability()        
        cooldown[6]     = 18*2;
        cooldownB[6]    = 60*3;
        cooldownC[6]    = 60*15;
        atk_spd[6]      = 5; //attack speed
        atk_dam[6]      = 2; //base damage
        dam_bon[6]      = 2; //bonus damage
        defense[6]      = 1; //base def
        def_bon[6]      = 0; //bonus def
        mag_dam[6]      = 8; //base magic damage
        mag_bon[6]      = 2; //bonus magic damage        
        mresist[6]      = 1; //base magic resist
        mr_bon[6]       = 0; //bonus magic resist
        accuracy[6]     = 94; //base accuracy
        acc_bon[6]      = 0; //bonus accuracy
        wlk_spd[6]      = 1.65; //walking speed;
        attack_type[6]  = "NECRO";
        attack_lvl[6]   = 0;
        attack_obj[6]   = obj_Necro_Shoot;
        weapon[6]       = spr_Necromancer_Staff
        spr_idle[6]     = spr_Necromancer
        spr_walk[6]     = spr_Necromancer_Walk
        spr_hurt[6]     = spr_Necromancer_Hit
        spr_dead[6]     = spr_Necromancer_Corpse
        color[6]        = make_color_rgb(52,126,64);;
        voice[6]        = snd_guy_voice;
        break;
        
    case 3:
        name[6]         = "NECROMANCER";
        bio[6]          = "Can increase attack#Summons skeletons";
        hpmax[6]        = 90;
        Necromancer_Ability()        
        cooldown[6]     = 18*2;
        cooldownB[6]    = 60*3;
        cooldownC[6]    = 60*15;
        atk_spd[6]      = 5; //attack speed
        atk_dam[6]      = 2; //base damage
        dam_bon[6]      = 0; //bonus damage
        defense[6]      = 1; //base def
        def_bon[6]      = 0; //bonus def
        mag_dam[6]      = 8; //base magic damage
        mag_bon[6]      = 4; //bonus magic damage        
        mresist[6]      = 1; //base magic resist
        mr_bon[6]       = 0; //bonus magic resist
        accuracy[6]     = 96; //base accuracy
        acc_bon[6]      = 0; //bonus accuracy
        wlk_spd[6]      = 1.65; //walking speed;
        attack_type[6]  = "NECRO";
        attack_lvl[6]   = 0;
        attack_obj[6]   = obj_Necro_Shoot;
        weapon[6]       = spr_Necromancer_Staff
        spr_idle[6]     = spr_Necromancer
        spr_walk[6]     = spr_Necromancer_Walk
        spr_hurt[6]     = spr_Necromancer_Hit
        spr_dead[6]     = spr_Necromancer_Corpse
        color[6]        = make_color_rgb(52,126,64);;
        voice[6]        = snd_guy_voice;
        break;
        
    case 4:
        name[6]         = "NECROMANCER";
        bio[6]          = "Can increase attack#Summons skeletons";
        hpmax[6]        = 100;
        Necromancer_Ability()        
        cooldown[6]     = 18*2;
        cooldownB[6]    = 60*3;
        cooldownC[6]    = 60*15;
        atk_spd[6]      = 5; //attack speed
        atk_dam[6]      = 2; //base damage
        dam_bon[6]      = 0; //bonus damage
        defense[6]      = 2; //base def
        def_bon[6]      = 0; //bonus def
        mag_dam[6]      = 8; //base magic damage
        mag_bon[6]      = 6; //bonus magic damage        
        mresist[6]      = 1; //base magic resist
        mr_bon[6]       = 0; //bonus magic resist
        accuracy[6]     = 98; //base accuracy
        acc_bon[6]      = 0; //bonus accuracy
        wlk_spd[6]      = 1.65; //walking speed;
        attack_type[6]  = "NECRO";
        attack_lvl[6]   = 0;
        attack_obj[6]   = obj_Necro_Shoot;
        weapon[6]       = spr_Necromancer_Staff
        spr_idle[6]     = spr_Necromancer
        spr_walk[6]     = spr_Necromancer_Walk
        spr_hurt[6]     = spr_Necromancer_Hit
        spr_dead[6]     = spr_Necromancer_Corpse
        color[6]        = make_color_rgb(52,126,64);;
        voice[6]        = snd_guy_voice;
        break;
        
    case 5:
        name[6]         = "RAVEN";
        bio[6]          = "Can increase attack#Summons skeletons";
        hpmax[6]        = 120;
        Necromancer_Ability()        
        cooldown[6]     = 18*2;
        cooldownB[6]    = 60*3;
        cooldownC[6]    = 60*15;
        atk_spd[6]      = 5; //attack speed
        atk_dam[6]      = 0; //base damage
        dam_bon[6]      = 0; //bonus damage
        defense[6]      = 2; //base def
        def_bon[6]      = 0; //bonus def
        mag_dam[6]      = 8; //base magic damage
        mag_bon[6]      = 8; //bonus magic damage        
        mresist[6]      = 1; //base magic resist
        mr_bon[6]       = 0; //bonus magic resist
        accuracy[6]     = 100; //base accuracy
        acc_bon[6]      = 0; //bonus accuracy
        wlk_spd[6]      = 1.7; //walking speed;
        attack_type[6]  = "NECRO";
        attack_lvl[6]   = 0;
        attack_obj[6]   = obj_Necro_Shoot;
        weapon[6]       = spr_Raven_Staff
        spr_idle[6]     = spr_Raven
        spr_walk[6]     = spr_Raven_Walk
        spr_hurt[6]     = spr_Raven_Hit
        spr_dead[6]     = spr_Raven_Corpse
        color[6]        = make_color_rgb(52,126,64);;
        voice[6]        = snd_guy_voice;
        break;                                        
}
