///add_ingredient(ingredient_type,amount)
var ind = get_ingredient_index(argument0);
if (ind!=-1)
{
    var sum = global.ingredient_count[ind]+argument1;
    if (sum<9999)
    {
        global.ingredient_count[ind]=sum;
    }
    else
    {
        global.ingredient_count[ind]=9999;
    }
}
else
{
    global.ingredient_type[global.ingredients_amount]=argument0;
    global.ingredient_name[global.ingredients_amount]=get_ingredient_name(argument0);
    global.ingredient_description[global.ingredients_amount]=get_ingredient_description(argument0);
    global.ingredient_count[global.ingredients_amount]=argument1;
    if (global.ingredient_count[global.ingredients_amount]>9999)
    {
        global.ingredient_count[global.ingredients_amount]=9999;
    }
    global.ingredients_amount++;
}
