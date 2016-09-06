///forge_item(recipe_index)
gml_pragma("forceinline");
/*
    Forges an item if possible.
*/
var a0 = argument0;
if (can_forge_item(a0))
{
    for (var i=global.recipe_ingredient_number[a0]-1;i>=0;i--)
    {
        consume_ingredient(global.recipe_ingredient_type[a0,i],global.recipe_ingredient_amount[a0,i]);
    }
    global.total_coins-=global.recipe_forge_cost[a0];
    //Add weapon.
    forge_add_weapon(global.recipe_result[a0]);
}
