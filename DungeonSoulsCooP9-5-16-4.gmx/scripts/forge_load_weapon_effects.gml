///forge_load_weapon_effects(int char_index)
gml_pragma("forceinline");
/*
    This function is only meant to be fired at the hero's create event in-game.
    It will perform a switch-case search to find what weapon the character is currently
    holding. If the weapon's id is found on the list, it will execute the code associated
    with the weapon. 
    
    Have in mind that the object where this function is called is the hero object, so you
    should have access to all of the hero's variables.
    
    To add a new weapon effect, add an entry to the switch case.
*/

//Variables for drawing control.
should_flip=true; //Whether to flip the vertical axis for better animation

switch (global.arcane_forge_weapon[argument0])
{
    case 20:
        weapon[argument0]=spr_Fire_Sword;
        should_flip=false;
        burn_chance +=35;
        burn_damage +=10;
        if (burn_second>2)
        {
            burn_second -= 2;
        }
        else
        {
            burn_second=1;
        }
        burn_duration +=3;
    break;
    case 23:
        weapon[argument0]=spr_Fire_Axe;
        should_flip=false;
        burn_chance +=35;
        burn_damage +=10;
        if (burn_second>2)
        {
            burn_second -= 2;
        }
        else
        {
            burn_second=1;
        }
        burn_duration +=3;
    break;
    case 25:
        weapon[argument0]=spr_Fire_Bow;
        burn_chance +=35;
        burn_damage +=10;
        if (burn_second>2)
        {
            burn_second -= 2;
        }
        else
        {
            burn_second=1;
        }
        burn_duration +=3;
    break;
    case 22:
        weapon[argument0]=spr_Fire_Dagger;
        attack_obj[argument0]=obj_Fire_Dagger_Throw;
        burn_chance +=35;
        burn_damage +=10;
        if (burn_second>2)
        {
            burn_second -= 2;
        }
        else
        {
            burn_second=1;
        }
        burn_duration +=3;
    break;
    case 24:
        weapon[argument0]=spr_Fire_Scepter;
        burn_chance +=35;
        burn_damage +=10;
        if (burn_second>2)
        {
            burn_second -= 2;
        }
        else
        {
            burn_second=1;
        }
        burn_duration +=3;
    break;
    case 21:
        weapon[argument0]=spr_Fire_Staff;
        burn_chance +=35;
        burn_damage +=10;
        if (burn_second>2)
        {
            burn_second -= 2;
        }
        else
        {
            burn_second=1;
        }
        burn_duration +=3;
    break;
    case 26:
        weapon[argument0]=spr_Ice_Sword;
        should_flip=false;
        slow_chance +=35;
        slow_damage +=40;
        if (slow_second>2)
        {
            slow_second -= 2;
        }
        else
        {
            slow_second=1;
        }
        slow_duration +=3;
    break;
    case 28:
        weapon[argument0]=spr_Ice_Staff;
        should_flip=false;
        slow_chance +=35;
        slow_damage +=40;
        if (slow_second>2)
        {
            slow_second -= 2;
        }
        else
        {
            slow_second=1;
        }
        slow_duration +=3;
    break;
    case 29:
        weapon[argument0]=spr_Ice_Scepter;
        should_flip=false;
        slow_chance +=35;
        slow_damage +=40;
        if (slow_second>2)
        {
            slow_second -= 2;
        }
        else
        {
            slow_second=1;
        }
        slow_duration +=3;
    break;
    case 30:
        weapon[argument0]=spr_Ice_Bow;
        should_flip=false;
        slow_chance +=35;
        slow_damage +=40;
        if (slow_second>2)
        {
            slow_second -= 2;
        }
        else
        {
            slow_second=1;
        }
        slow_duration +=3;
    break;
    case 31:
        weapon[argument0]=spr_Ice_Axe;
        should_flip=false;
        slow_chance +=35;
        slow_damage +=40;
        if (slow_second>2)
        {
            slow_second -= 2;
        }
        else
        {
            slow_second=1;
        }
        slow_duration +=3;
    break;
    case 33:
        weapon[argument0]=spr_Spectral_Dagger;
        attack_obj[argument0]=obj_Spectral_Dagger_Throw;
        should_flip=false;
        has_spectral_pierce=true;
    break;
    case 32:
        weapon[argument0]=spr_Spectral_Bow;
        should_flip=false;
        has_spectral_pierce=true;
    break;
    case 34:
        weapon[argument0]=spr_Spectral_Scepter;
        should_flip=false;
        has_spectral_pierce=true;
    break;
}
