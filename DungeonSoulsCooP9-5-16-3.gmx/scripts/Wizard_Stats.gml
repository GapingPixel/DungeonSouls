gml_pragma("forceinline");
if rank[4] == 5
{
    name[4]         = "ARCHMAGE";
    bio[4]          = "Better crowd control#Burn enemies";
    hpmax[4]        = 80;
    Wizard_Ability()        
    cooldown[4]     = 30*2;
    cooldownB[4]    = 60*6;
    cooldownC[4]    = 60*15;
    atk_spd[4]      = 6; //attack speed
    atk_dam[4]      = 0; //base damage
    dam_bon[4]      = 0; //bonus damage
    defense[4]      = 1; //base def
    def_bon[4]      = 0; //bonus def
    mag_dam[4]      = 8; //base magic damage
    mag_bon[4]      = 0; //bonus magic damage        
    mresist[4]      = 2; //base magic resist
    mr_bon[4]       = 0; //bonus magic resist
    accuracy[4]     = 78; //base accuracy
    acc_bon[4]      = 0; //bonus accuracy
    wlk_spd[4]      = 1.7; //walking speed;
    attack_type[4]  = "MAGIC";
    attack_lvl[4]   = 0;
    attack_obj[4]   = obj_Fireball;
    weapon[4]       = spr_Archmage_Staff;
    spr_idle[4]     = spr_Archmage
    spr_walk[4]     = spr_Archmage_Walk
    spr_hurt[4]     = spr_Archmage_Hit
    spr_dead[4]     = spr_Archmage_Corpse
    color[4]        = c_purple;
    voice[4]        = snd_wizard_voice;
}else
{
    name[4]         = "WIZARD";
    bio[4]          = "Better crowd control#Burn enemies";
    hpmax[4]        = 60;
    Wizard_Ability()
    cooldown[4]     = 30*2;
    cooldownB[4]    = 60*6;
    cooldownC[4]    = 60*15;
    atk_spd[4]      = 6; //attack speed
    atk_dam[4]      = 0; //base damage
    dam_bon[4]      = 0; //bonus damage
    defense[4]      = 1; //base def
    def_bon[4]      = 0; //bonus def
    mag_dam[4]      = 8; //base magic damage
    mag_bon[4]      = 0; //bonus magic damage        
    mresist[4]      = 2; //base magic resist
    mr_bon[4]       = 0; //bonus magic resist
    accuracy[4]     = 78; //base accuracy
    acc_bon[4]      = 0; //bonus accuracy
    wlk_spd[4]      = 1.7; //walking speed;
    attack_type[4]  = "MAGIC";
    attack_lvl[4]   = 0;
    attack_obj[4]   = obj_Fireball;
    weapon[4]       = spr_Wizard_Staff;
    spr_idle[4]     = spr_Wizard_Idle
    spr_walk[4]     = spr_Wizard_Walk
    spr_hurt[4]     = spr_Wizard_Hit
    spr_dead[4]     = spr_Wizard_Corpse
    color[4]        = c_purple;
    voice[4]        = snd_wizard_voice;
}
/*switch(rank[4])
{
    case 0:
        name[4]         = "WIZARD";
        bio[4]          = "Better crowd control#Burn enemies";
        hpmax[4]        = 60;
        Wizard_Ability()
        cooldown[4]     = 30*2;
        cooldownB[4]    = 60*6;
        cooldownC[4]    = 60*15;
        atk_spd[4]      = 6; //attack speed
        atk_dam[4]      = 0; //base damage
        dam_bon[4]      = 0; //bonus damage
        defense[4]      = 1; //base def
        def_bon[4]      = 0; //bonus def
        mag_dam[4]      = 8; //base magic damage
        mag_bon[4]      = 0; //bonus magic damage        
        mresist[4]      = 2; //base magic resist
        mr_bon[4]       = 0; //bonus magic resist
        accuracy[4]     = 78; //base accuracy
        acc_bon[4]      = 0; //bonus accuracy
        wlk_spd[4]      = 1.7; //walking speed;
        attack_type[4]  = "MAGIC";
        attack_lvl[4]   = 0;
        attack_obj[4]   = obj_Fireball;
        weapon[4]       = spr_Wizard_Staff;
        spr_idle[4]     = spr_Wizard_Idle
        spr_walk[4]     = spr_Wizard_Walk
        spr_hurt[4]     = spr_Wizard_Hit
        spr_dead[4]     = spr_Wizard_Corpse
        color[4]        = c_purple;
        voice[4]        = snd_wizard_voice;
        break;
        
    case 1:
        name[4]         = "WIZARD";
        bio[4]          = "Better crowd control#Burn enemies";
        hpmax[4]        = 62;
        Wizard_Ability()        
        cooldown[4]     = 30*2;
        cooldownB[4]    = 60*6;
        cooldownC[4]    = 60*15;
        atk_spd[4]      = 6; //attack speed
        atk_dam[4]      = 0; //base damage
        dam_bon[4]      = 0; //bonus damage
        defense[4]      = 1; //base def
        def_bon[4]      = 0; //bonus def
        mag_dam[4]      = 10; //base magic damage
        mag_bon[4]      = 0; //bonus magic damage        
        mresist[4]      = 2; //base magic resist
        mr_bon[4]       = 0; //bonus magic resist
        accuracy[4]     = 79; //base accuracy
        acc_bon[4]      = 0; //bonus accuracy
        wlk_spd[4]      = 1.7; //walking speed;
        attack_type[4]  = "MAGIC";
        attack_lvl[4]   = 0;
        attack_obj[4]   = obj_Fireball;
        weapon[4]       = spr_Wizard_Staff;
        spr_idle[4]     = spr_Wizard_Idle
        spr_walk[4]     = spr_Wizard_Walk
        spr_hurt[4]     = spr_Wizard_Hit
        spr_dead[4]     = spr_Wizard_Corpse
        color[4]        = c_purple;
        voice[4]        = snd_wizard_voice;
        break;
        
    case 2:
        name[4]         = "WIZARD";
        bio[4]          = "Better crowd control#Burn enemies";
        hpmax[4]        = 68;
        Wizard_Ability()        
        cooldown[4]     = 28*2;
        cooldownB[4]    = 60*6;
        cooldownC[4]    = 60*15;
        atk_spd[4]      = 6; //attack speed
        atk_dam[4]      = 0; //base damage
        dam_bon[4]      = 0; //bonus damage
        defense[4]      = 1; //base def
        def_bon[4]      = 0; //bonus def
        mag_dam[4]      = 12; //base magic damage
        mag_bon[4]      = 0; //bonus magic damage        
        mresist[4]      = 2; //base magic resist
        mr_bon[4]       = 0; //bonus magic resist
        accuracy[4]     = 80; //base accuracy
        acc_bon[4]      = 0; //bonus accuracy
        wlk_spd[4]      = 1.7; //walking speed;
        attack_type[4]  = "MAGIC";
        attack_lvl[4]   = 0;
        attack_obj[4]   = obj_Fireball;
        weapon[4]       = spr_Wizard_Staff;
        spr_idle[4]     = spr_Wizard_Idle
        spr_walk[4]     = spr_Wizard_Walk
        spr_hurt[4]     = spr_Wizard_Hit
        spr_dead[4]     = spr_Wizard_Corpse
        color[4]        = c_purple;
        voice[4]        = snd_wizard_voice;
        break;
        
    case 3:
        name[4]         = "WIZARD";
        bio[4]          = "Better crowd control#Burn enemies";
        hpmax[4]        = 70;
        Wizard_Ability()        
        cooldown[4]     = 26*2;
        cooldownB[4]    = 60*6;
        cooldownC[4]    = 60*15;
        atk_spd[4]      = 6; //attack speed
        atk_dam[4]      = 0; //base damage
        dam_bon[4]      = 0; //bonus damage
        defense[4]      = 1; //base def
        def_bon[4]      = 0; //bonus def
        mag_dam[4]      = 15; //base magic damage
        mag_bon[4]      = 0; //bonus magic damage        
        mresist[4]      = 3; //base magic resist
        mr_bon[4]       = 0; //bonus magic resist
        accuracy[4]     = 82; //base accuracy
        acc_bon[4]      = 0; //bonus accuracy
        wlk_spd[4]      = 1.7; //walking speed;
        attack_type[4]  = "MAGIC";
        attack_lvl[4]   = 0;
        attack_obj[4]   = obj_Fireball;
        weapon[4]       = spr_Wizard_Staff;
        spr_idle[4]     = spr_Wizard_Idle
        spr_walk[4]     = spr_Wizard_Walk
        spr_hurt[4]     = spr_Wizard_Hit
        spr_dead[4]     = spr_Wizard_Corpse
        color[4]        = c_purple;
        voice[4]        = snd_wizard_voice;
        break;
        
    case 4:
        name[4]         = "WIZARD";
        bio[4]          = "Better crowd control#Burn enemies";
        hpmax[4]        = 75;
        Wizard_Ability()        
        cooldown[4]     = 26*2;
        cooldownB[4]    = 60*6;
        cooldownC[4]    = 60*15;
        atk_spd[4]      = 6; //attack speed
        atk_dam[4]      = 0; //base damage
        dam_bon[4]      = 0; //bonus damage
        defense[4]      = 1; //base def
        def_bon[4]      = 0; //bonus def
        mag_dam[4]      = 18; //base magic damage
        mag_bon[4]      = 0; //bonus magic damage        
        mresist[4]      = 3; //base magic resist
        mr_bon[4]       = 0; //bonus magic resist
        accuracy[4]     = 83; //base accuracy
        acc_bon[4]      = 0; //bonus accuracy
        wlk_spd[4]      = 1.7; //walking speed;
        attack_type[4]  = "MAGIC";
        attack_lvl[4]   = 0;
        attack_obj[4]   = obj_Fireball;
        weapon[4]       = spr_Wizard_Staff;
        spr_idle[4]     = spr_Wizard_Idle
        spr_walk[4]     = spr_Wizard_Walk
        spr_hurt[4]     = spr_Wizard_Hit
        spr_dead[4]     = spr_Wizard_Corpse
        color[4]        = c_purple;
        voice[4]        = snd_wizard_voice;
        break;
        
    case 5:
        name[4]         = "ARCHMAGE";
        bio[4]          = "Better crowd control#Burn enemies";
        hpmax[4]        = 80;
        Wizard_Ability()        
        cooldown[4]     = 25*2;
        cooldownB[4]    = 60*6;
        cooldownC[4]    = 60*15;
        atk_spd[4]      = 6; //attack speed
        atk_dam[4]      = 0; //base damage
        dam_bon[4]      = 0; //bonus damage
        defense[4]      = 1; //base def
        def_bon[4]      = 0; //bonus def
        mag_dam[4]      = 20; //base magic damage
        mag_bon[4]      = 0; //bonus magic damage        
        mresist[4]      = 4; //base magic resist
        mr_bon[4]       = 0; //bonus magic resist
        accuracy[4]     = 85; //base accuracy
        acc_bon[4]      = 0; //bonus accuracy
        wlk_spd[4]      = 1.8; //walking speed;
        attack_type[4]  = "MAGIC";
        attack_lvl[4]   = 0;
        attack_obj[4]   = obj_Fireball;
        weapon[4]       = spr_Archmage_Staff;
        spr_idle[4]     = spr_Archmage
        spr_walk[4]     = spr_Archmage_Walk
        spr_hurt[4]     = spr_Archmage_Hit
        spr_dead[4]     = spr_Archmage_Corpse
        color[4]        = c_purple;
        voice[4]        = snd_wizard_voice;
        break;                                        
}
