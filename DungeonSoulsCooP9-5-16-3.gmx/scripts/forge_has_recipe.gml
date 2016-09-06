///forge_has_recipe(recipe_index)
var result = false;
var i = argument0;

//for (var c=0;c<global.number_recipes;c++)
for (var c=global.number_recipes-1;c>=0;c--)
{
    if (global.recipe[c]== i)
    {
        result=true;
        break;
    }
}
return result;
