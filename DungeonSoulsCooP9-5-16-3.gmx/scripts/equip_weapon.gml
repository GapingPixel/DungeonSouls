///equip_weapon(int forge_item_index,int char_index)
gml_pragma("forceinline");
/*
    Returns true if successfully equiped.
*/
var a0 = argument0;
var a1 = argument1;
var result=canEquip(a1,a0);

if (result)
{
    var tempId = global.arcane_forge_weapon[a1];
    global.arcane_forge_weapon[a1]=global.forge_item_id[a0];
    global.arcane_forge_weapon_sprite[a1]=global.forge_item_sprite[a0];
    load_forge_item_id(tempId,a0);
}
return result;
