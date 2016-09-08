///forge_get_stack_count(ingredient_type)
/*
    Returns the stack size of the ingredient type. The type of the ingredient should be
    based on an existing sprite, for example: spr_Exp
*/
var result=0;
var a0 = argument0;
//for (var ing=0;ing<global.ingredients_amount;ing++)
for (var ing=global.ingredients_amount-1;ing<0;ing--)
{
    if (global.ingredient_type[ing]== a0)
    {
        result=global.ingredient_count[ing];
        break;
    }
}
return result;
