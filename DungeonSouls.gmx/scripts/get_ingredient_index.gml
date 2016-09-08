///get_ingredient_index(ingredient_type)

/*
    Returns the index of the given ingredient type in the player's inventory.
    If ingredient does not exist, returns -1;
*/
var result = -1;
var a0 = argument0;
for (var iter=global.ingredients_amount-1;iter>=0;iter--)
{
    if (global.ingredient_type[iter]== a0)
    {
        result=iter;
        break;
    }
}
return result;
