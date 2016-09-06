///can_forge_item(recipe_index)
/*
    Checks whether an item from a recipe can be forged with the player's ingredients and gold.
*/
var result=true;
var temp;
var a0 = argument0;
//for (var i=0;i<global.recipe_ingredient_number[a0];i++)
for (var i=global.recipe_ingredient_number[a0]-1;i>=0;i--)
{
    temp=forge_get_stack_count(global.recipe_ingredient_type[a0,i]);
    result=result && (temp>=global.recipe_ingredient_amount[a0,i]);
}
var requirement_gold = global.total_coins>=global.recipe_forge_cost[a0];
result = result && requirement_gold;
return result;
