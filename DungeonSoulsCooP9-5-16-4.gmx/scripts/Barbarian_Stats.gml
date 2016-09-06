gml_pragma("forceinline");
if rank[0] == 5
{
    name[0]         = "VIKING";
    bio[0]          = "Strong power#Large health";
    hpmax[0]        = 150;
    Barb_Ability();        
    cooldown[0]     = 18*2;
    cooldownB[0]    = 60*15;
    cooldownC[0]    = 60*18;
    atk_spd[0]      = 0.5/2; //attack speed
    atk_dam[0]      = 5; //base damage
    dam_bon[0]      = 2; //bonus damage
    defense[0]      = 1; //base def
    def_bon[0]      = 0; //bonus def
    mag_dam[0]      = 0; //base magic damage
    mag_bon[0]      = 0; //bonus magic damage        
    mresist[0]      = 1; //base magic resist
    mr_bon[0]       = 0; //bonus magic resist
    accuracy[0]     = 40; //base accuracy
    acc_bon[0]      = 0; //bonus accuracy
    wlk_spd[0]      = 3/2; //walking speed; MAX = 3
    attack_type[0]  = "AXE";
    attack_lvl[0]   = 0;
    attack_obj[0]   = obj_Axe_Slash;
    weapon[0]       = spr_Viking_Axe;
    spr_idle[0]     = spr_Viking
    spr_walk[0]     = spr_Viking_Walk
    spr_hurt[0]     = spr_Viking_Hit
    spr_dead[0]     = spr_Viking_Corpse;
    color[0]        = merge_color(c_yellow,c_orange,0.5);
    voice[0]        = snd_guy_voice; 
}else
{
    name[0]         = "BARBARIAN";
    bio[0]          = "Strong power#Large health";
    hpmax[0]        = 120;
    Barb_Ability();
    cooldown[0]     = 18*2;
    cooldownB[0]    = 60*15;
    cooldownC[0]    = 60*18;
    atk_spd[0]      = 0.5/2; //attack speed
    atk_dam[0]      = 5; //base damage
    dam_bon[0]      = 2; //bonus damage
    defense[0]      = 1; //base def
    def_bon[0]      = 0; //bonus def
    mag_dam[0]      = 0; //base magic damage
    mag_bon[0]      = 0; //bonus magic damage        
    mresist[0]      = 1; //base magic resist
    mr_bon[0]       = 0; //bonus magic resist
    accuracy[0]     = 40; //base accuracy
    acc_bon[0]      = 0; //bonus accuracy
    wlk_spd[0]      = 3/2; //walking speed; MAX = 3
    attack_type[0]  = "AXE";
    attack_lvl[0]   = 0;
    attack_obj[0]   = obj_Axe_Slash;
    weapon[0]       = spr_Barbarian_Axe;
    spr_idle[0]     = spr_Barbarian_Idle
    spr_walk[0]     = spr_Barbarian_Walk
    spr_hurt[0]     = spr_Barbarian_Hit
    spr_dead[0]     = spr_Barbarian_Corpse;
    color[0]        = merge_color(c_yellow,c_orange,0.5);
    voice[0]        = snd_guy_voice;
}
/*switch(rank[0])
{
    case 0:
        name[0]         = "BARBARIAN";
        bio[0]          = "Strong power#Large health";
        hpmax[0]        = 120;
        Barb_Ability();
        cooldown[0]     = 18*2;
        cooldownB[0]    = 60*15;
        cooldownC[0]    = 60*18;
        atk_spd[0]      = 0.5/2; //attack speed
        atk_dam[0]      = 5; //base damage
        dam_bon[0]      = 2; //bonus damage
        defense[0]      = 1; //base def
        def_bon[0]      = 0; //bonus def
        mag_dam[0]      = 0; //base magic damage
        mag_bon[0]      = 0; //bonus magic damage        
        mresist[0]      = 1; //base magic resist
        mr_bon[0]       = 0; //bonus magic resist
        accuracy[0]     = 40; //base accuracy
        acc_bon[0]      = 0; //bonus accuracy
        wlk_spd[0]      = 3/2; //walking speed; MAX = 3
        attack_type[0]  = "AXE";
        attack_lvl[0]   = 0;
        attack_obj[0]   = obj_Axe_Slash;
        weapon[0]       = spr_Barbarian_Axe;
        spr_idle[0]     = spr_Barbarian_Idle
        spr_walk[0]     = spr_Barbarian_Walk
        spr_hurt[0]     = spr_Barbarian_Hit
        spr_dead[0]     = spr_Barbarian_Corpse;
        color[0]        = merge_color(c_yellow,c_orange,0.5);
        voice[0]        = snd_guy_voice;
        break;
        
    case 1:
        name[0]         = "BARBARIAN";
        bio[0]          = "Strong power#Large health";
        hpmax[0]        = 130;
        Barb_Ability();       
        cooldown[0]     = 18*2;
        cooldownB[0]    = 60*15;
        cooldownC[0]    = 60*18;
        atk_spd[0]      = 0.5/2; //attack speed
        atk_dam[0]      = 5; //base damage
        dam_bon[0]      = 3; //bonus damage
        defense[0]      = 1; //base def
        def_bon[0]      = 1; //bonus def
        mag_dam[0]      = 0; //base magic damage
        mag_bon[0]      = 0; //bonus magic damage        
        mresist[0]      = 1; //base magic resist
        mr_bon[0]       = 0; //bonus magic resist
        accuracy[0]     = 45; //base accuracy
        acc_bon[0]      = 0; //bonus accuracy
        wlk_spd[0]      = 3/2; //walking speed; MAX = 3
        attack_type[0]  = "AXE";
        attack_lvl[0]   = 0;
        attack_obj[0]   = obj_Axe_Slash;
        weapon[0]       = spr_Barbarian_Axe;
        spr_idle[0]     = spr_Barbarian_Idle
        spr_walk[0]     = spr_Barbarian_Walk
        spr_hurt[0]     = spr_Barbarian_Hit
        spr_dead[0]     = spr_Barbarian_Corpse;
        color[0]        = merge_color(c_yellow,c_orange,0.5);
        voice[0]        = snd_guy_voice;        
        break;
        
    case 2:
        name[0]         = "BARBARIAN";
        bio[0]          = "Strong power#Large health";
        hpmax[0]        = 135;
        Barb_Ability();        
        cooldown[0]     = 18*2;
        cooldownB[0]    = 60*15;
        cooldownC[0]    = 60*18;
        atk_spd[0]      = 0.5/2; //attack speed
        atk_dam[0]      = 6; //base damage
        dam_bon[0]      = 3; //bonus damage
        defense[0]      = 2; //base def
        def_bon[0]      = 1; //bonus def
        mag_dam[0]      = 0; //base magic damage
        mag_bon[0]      = 0; //bonus magic damage        
        mresist[0]      = 1; //base magic resist
        mr_bon[0]       = 0; //bonus magic resist
        accuracy[0]     = 45; //base accuracy
        acc_bon[0]      = 0; //bonus accuracy
        wlk_spd[0]      = 3/2; //walking speed; MAX = 3
        attack_type[0]  = "AXE";
        attack_lvl[0]   = 0;
        attack_obj[0]   = obj_Axe_Slash;
        weapon[0]       = spr_Barbarian_Axe;
        spr_idle[0]     = spr_Barbarian_Idle
        spr_walk[0]     = spr_Barbarian_Walk
        spr_hurt[0]     = spr_Barbarian_Hit
        spr_dead[0]     = spr_Barbarian_Corpse;
        color[0]        = merge_color(c_yellow,c_orange,0.5);
        voice[0]        = snd_guy_voice;        
        break;                

    case 3:
        name[0]         = "BARBARIAN";
        bio[0]          = "Strong power#Large health";
        hpmax[0]        = 140;
        Barb_Ability();        
        cooldown[0]     = 18*2;
        cooldownB[0]    = 60*15;
        cooldownC[0]    = 60*18;
        atk_spd[0]      = 0.5/2; //attack speed
        atk_dam[0]      = 8; //base damage
        dam_bon[0]      = 3; //bonus damage
        defense[0]      = 2; //base def
        def_bon[0]      = 2; //bonus def
        mag_dam[0]      = 0; //base magic damage
        mag_bon[0]      = 0; //bonus magic damage        
        mresist[0]      = 1; //base magic resist
        mr_bon[0]       = 0; //bonus magic resist
        accuracy[0]     = 45; //base accuracy
        acc_bon[0]      = 0; //bonus accuracy
        wlk_spd[0]      = 3/2; //walking speed; MAX = 3
        attack_type[0]  = "AXE";
        attack_lvl[0]   = 0;
        attack_obj[0]   = obj_Axe_Slash;
        weapon[0]       = spr_Barbarian_Axe;
        spr_idle[0]     = spr_Barbarian_Idle
        spr_walk[0]     = spr_Barbarian_Walk
        spr_hurt[0]     = spr_Barbarian_Hit
        spr_dead[0]     = spr_Barbarian_Corpse;
        color[0]        = merge_color(c_yellow,c_orange,0.5);
        voice[0]        = snd_guy_voice;        
        break;
        
    case 4:
        name[0]         = "BARBARIAN";
        bio[0]          = "Strong power#Large health";
        hpmax[0]        = 145;
        Barb_Ability();      
        cooldown[0]     = 18*2;
        cooldownB[0]    = 60*15;
        cooldownC[0]    = 60*18;
        atk_spd[0]      = 0.5/2; //attack speed
        atk_dam[0]      = 9; //base damage
        dam_bon[0]      = 3; //bonus damage
        defense[0]      = 3; //base def
        def_bon[0]      = 2; //bonus def
        mag_dam[0]      = 0; //base magic damage
        mag_bon[0]      = 0; //bonus magic damage        
        mresist[0]      = 1; //base magic resist
        mr_bon[0]       = 0; //bonus magic resist
        accuracy[0]     = 50; //base accuracy
        acc_bon[0]      = 0; //bonus accuracy
        wlk_spd[0]      = 3/2; //walking speed; MAX = 3
        attack_type[0]  = "AXE";
        attack_lvl[0]   = 0;
        attack_obj[0]   = obj_Axe_Slash;
        weapon[0]       = spr_Barbarian_Axe;
        spr_idle[0]     = spr_Barbarian_Idle
        spr_walk[0]     = spr_Barbarian_Walk
        spr_hurt[0]     = spr_Barbarian_Hit
        spr_dead[0]     = spr_Barbarian_Corpse;
        color[0]        = merge_color(c_yellow,c_orange,0.5);
        voice[0]        = snd_guy_voice;        
        break;
        
    case 5:
        name[0]         = "VIKING";
        bio[0]          = "Strong power#Large health";
        hpmax[0]        = 150;
        Barb_Ability();        
        cooldown[0]     = 18*2;
        cooldownB[0]    = 60*15;
        cooldownC[0]    = 60*18;
        atk_spd[0]      = 0.5/2; //attack speed
        atk_dam[0]      = 10; //base damage
        dam_bon[0]      = 5; //bonus damage
        defense[0]      = 3; //base def
        def_bon[0]      = 3; //bonus def
        mag_dam[0]      = 0; //base magic damage
        mag_bon[0]      = 0; //bonus magic damage        
        mresist[0]      = 1; //base magic resist
        mr_bon[0]       = 0; //bonus magic resist
        accuracy[0]     = 50; //base accuracy
        acc_bon[0]      = 0; //bonus accuracy
        wlk_spd[0]      = 1.8; //walking speed; MAX = 3
        attack_type[0]  = "AXE";
        attack_lvl[0]   = 0;
        attack_obj[0]   = obj_Axe_Slash;
        weapon[0]       = spr_Viking_Axe;
        spr_idle[0]     = spr_Viking
        spr_walk[0]     = spr_Viking_Walk
        spr_hurt[0]     = spr_Viking_Hit
        spr_dead[0]     = spr_Viking_Corpse;
        color[0]        = merge_color(c_yellow,c_orange,0.5);
        voice[0]        = snd_guy_voice;        
        break;                            
}*/
