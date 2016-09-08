///arcane_forge_update_neophyte()
gml_pragma("forceinline");
/*
    Updates a weapon in case the hero of that weapon has reached neophyte.
*/


//for (var c=0;c<10;c++)
for (var c=9;c>=0;c--)
{
    
    switch (global.arcane_forge_weapon[c]) {
    
    case 0:
    global.arcane_forge_weapon[c]=1;
    global.arcane_forge_weapon_sprite[c]=spr_Viking_Axe;
    break;
    
    case 2:
    global.arcane_forge_weapon[c]=3;
    global.arcane_forge_weapon_sprite[c]=spr_Viper;
    break;
    
    case 4:
    global.arcane_forge_weapon[c]=5;
    global.arcane_forge_weapon_sprite[c]=spr_Rogue_Knife;
    break;
    
    case 6:
    global.arcane_forge_weapon[c]=7;
    global.arcane_forge_weapon_sprite[c]=spr_Knight_Sword;
    break;
    
    case 8:
    global.arcane_forge_weapon[c]=9;
    global.arcane_forge_weapon_sprite[c]=spr_Archmage_Staff;
    break;
    
    case 10:
    global.arcane_forge_weapon[c]=11;
    global.arcane_forge_weapon_sprite[c]=spr_Paladin_Staff;
    break;
    
    case 12:
    global.arcane_forge_weapon[c]=13;
    global.arcane_forge_weapon_sprite[c]=spr_Raven_Staff;
    break;
    
    case 14:
    global.arcane_forge_weapon[c]=15;
    global.arcane_forge_weapon_sprite[c]=spr_Destroyer_Hammer;
    break;
    
    case 16:
    global.arcane_forge_weapon[c]=17;
    global.arcane_forge_weapon_sprite[c]=spr_Duelist_Weapon;
    break;
    
    case 18:
    global.arcane_forge_weapon[c]=19;
    global.arcane_forge_weapon_sprite[c]=spr_Mechanic_Wrench;
    break;
    
    }
}
    /*OLD CODE if (global.arcane_forge_weapon[c]==0)
    {
        global.arcane_forge_weapon[c]=1;
        global.arcane_forge_weapon_sprite[c]=spr_Viking_Axe;
    }
    else if (global.arcane_forge_weapon[c]==2)
    {
        global.arcane_forge_weapon[c]=3;
        global.arcane_forge_weapon_sprite[c]=spr_Viper;
    }
    else if (global.arcane_forge_weapon[c]==4)
    {
        global.arcane_forge_weapon[c]=5;
        global.arcane_forge_weapon_sprite[c]=spr_Rogue_Knife;
    }
    else if (global.arcane_forge_weapon[c]==6)
    {
        global.arcane_forge_weapon[c]=7;
        global.arcane_forge_weapon_sprite[c]=spr_Knight_Sword;
    }
    else if (global.arcane_forge_weapon[c]==8)
    {
        global.arcane_forge_weapon[c]=9;
        global.arcane_forge_weapon_sprite[c]=spr_Archmage_Staff;
    }
    else if (global.arcane_forge_weapon[c]==10)
    {
        global.arcane_forge_weapon[c]=11;
        global.arcane_forge_weapon_sprite[c]=spr_Paladin_Staff;
    }
    else if (global.arcane_forge_weapon[c]==12)
    {
        global.arcane_forge_weapon[c]=13;
        global.arcane_forge_weapon_sprite[c]=spr_Raven_Staff;
    }
    else if (global.arcane_forge_weapon[c]==14)
    {
        global.arcane_forge_weapon[c]=15;
        global.arcane_forge_weapon_sprite[c]=spr_Destroyer_Hammer;
    }
    else if (global.arcane_forge_weapon[c]==16)
    {
        global.arcane_forge_weapon[c]=17;
        global.arcane_forge_weapon_sprite[c]=spr_Duelist_Weapon;
    }
    else if (global.arcane_forge_weapon[c]==18)
    {
        global.arcane_forge_weapon[c]=19;
        global.arcane_forge_weapon_sprite[c]=spr_Mechanic_Wrench;
    }*/


//for (var c=0;c<global.forge_item_amount;c++)
for (var c=global.forge_item_amount-1;c>=0;c--)
{
    switch (global.forge_item_sprite[c]) {
    
           case 0:
           load_forge_item(spr_Viking_Axe,c);
           break;
    
           case 2:
           load_forge_item(spr_Viper,c);
           break;
    
           case 4:
           load_forge_item(spr_Thief_Knife,c);
           break;
    
           case 6:
           load_forge_item(spr_Knight_Sword,c);
           break;
    
           case 8:
           load_forge_item(spr_Archmage_Staff,c);
           break;
    
           case 10:
           load_forge_item(spr_Paladin_Staff,c);
           break;
    
           case 12:
           load_forge_item(spr_Raven_Staff,c);
           break;
    
           case 14:
           load_forge_item(spr_Destroyer_Hammer,c);
           break;
    
           case 16:
           load_forge_item(spr_Duelist_Weapon,c);
           break;
    
           case 18:
           load_forge_item(spr_Mechanic_Wrench,c);
           break;
    }
} 
    /*OLD CODE if (global.forge_item_sprite[c]==0)
    {
        load_forge_item(spr_Viking_Axe,c);
    }
    else if (global.forge_item_sprite[c]==2)
    {
        load_forge_item(spr_Viper,c);
    }
    else if (global.forge_item_sprite[c]==4)
    {
        load_forge_item(spr_Thief_Knife,c);
    }
    else if (global.forge_item_sprite[c]==6)
    {
        load_forge_item(spr_Knight_Sword,c);
    }
    else if (global.forge_item_sprite[c]==8)
    {
        load_forge_item(spr_Archmage_Staff,c);
    }
    else if (global.forge_item_sprite[c]==10)
    {
        load_forge_item(spr_Paladin_Staff,c);
    }
    else if (global.forge_item_sprite[c]==12)
    {
        load_forge_item(spr_Raven_Staff,c);
    }
    else if (global.forge_item_sprite[c]==14)
    {
        load_forge_item(spr_Destroyer_Hammer,c);
    }
    else if (global.forge_item_sprite[c]==16)
    {
        load_forge_item(spr_Duelist_Weapon,c);
    }
    else if (global.forge_item_sprite[c]==18)
    {
        load_forge_item(spr_Mechanic_Wrench,c);
    }*/

