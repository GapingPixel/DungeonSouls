///get_ingredient_name(ingredient_type)
var result = "N/A";
var a0 = argument0;


//for (p=0;p<global.forge_ingredients_max_count;p++)
for (p=global.forge_ingredients_max_count-1;p>=0;p--)
{
    if (global.forge_ingredient_type[p] == a0)
    {
        result=global.forge_ingredient_name[p];
        break;
    }
}
return result;
