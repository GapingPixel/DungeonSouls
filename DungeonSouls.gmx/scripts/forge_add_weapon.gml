///forge_add_weapon(item_index weapon)
gml_pragma("forceinline");
/*
    Adds a weapon to the player's weapon inventory.
*/
load_forge_item(argument0,global.forge_item_amount);
global.forge_item_amount++;
