///load_forge_item(item_id,item_index)
gml_pragma("forceinline");
/*
    Loads the arcane forge item identified by the sprite, updating the reference
    of global.forge_item_xxx specified in item_index
*/
var a0 = argument0;
var a1 = argument1;
//for (var i=0;i<global.forgedb_max_items;i++)
for (var i=global.forgedb_max_items-1;i>=0;i--)
{
    if (global.forgedb_item_id[i]==a0)
    {
        global.forge_item_id[a1]=global.forgedb_item_id[i];
        global.forge_item_sprite[a1]=global.forgedb_item_sprite[i];
        global.forge_item_name[a1]=global.forgedb_item_name[i];
        global.forge_item_description[a1]=global.forgedb_item_description[i];
        global.forge_item_type[a1]=global.forgedb_item_type[i];
        break;
    }
}
