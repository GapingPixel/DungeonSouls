///forge_get_item_index_inv(int arcane_forge_slot)
var result=-1;
var i = argument0
//for (var c=0;c<global.forgedb_max_items;c++)
for (var c= global.forgedb_max_items-1; c >= 0; c--)
{
    if (global.forgedb_item_sprite[c]==global.forge_item_sprite[i])
    {
        result=c;
        break;
    }
}
return result;
