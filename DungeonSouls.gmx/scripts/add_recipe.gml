///add_recipe(int recipe_index_to_add)
gml_pragma("forceinline");
/*
    Adds a recipe to the recipe list.
*/
if (!forge_has_recipe(argument0)) {
    global.recipe[global.number_recipes++]=argument0;
    add_notification(global.recipe_result[argument0],0,"A new recipe was added",3);
}
