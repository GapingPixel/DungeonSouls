///Drop_Rare_Recipe()
/*
    Drops an uncommon random recipe that the player hasn't obtained yet.
    If there are no more recipes for the player to learn, it will return -1.
*/
available_recipes = 15; //All available recipes
temp_recipes = ds_list_create(); //List with generated recipes
for (var c=0;c<available_recipes;c++)
{
    if (global.recipe_sprite[c]==spr_Rare_Recipe)
    {
        ds_list_add(temp_recipes,c); //Recipes are sequencial
    }
}
var _rs;
_rs=-1;
while (ds_list_size(temp_recipes)>0 && (_rs==-1))
{
    var _rand = irandom(available_recipes);
    var pos = _rand;
    var _rand = ds_list_find_value(temp_recipes,_rand);
    ds_list_delete(temp_recipes,pos);
    _rs=_rand;
    if (_rs==undefined)
    {
        _rs=-1;
    }
    if (forge_has_recipe(_rs))
    {
        _rs=-1;
    }
}
if (_rs!=-1)
{
    switch (_rs)
    {
        case 12:
            _rs=obj_Spectral_Bow_Recipe;
        break;
        case 13:
            _rs=obj_Spectral_Dagger_Recipe;
        break;
        case 14:
            _rs=obj_Spectral_Staff_Recipe;
        break;
    }
}
return _rs;
