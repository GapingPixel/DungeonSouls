///Drop_Uncommon_Recipe()
/*
    Drops an uncommon random recipe that the player hasn't obtained yet.
    If there are no more recipes for the player to learn, it will return -1.
*/
available_recipes = 15; //All available recipes
temp_recipes = ds_list_create(); //List with generated recipes
for (var c=0;c<available_recipes;c++)
{
    if (global.recipe_sprite[c]==spr_Uncommon_Recipe)
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
        case 0:
            _rs=obj_Fire_Sword_Recipe;
        break;
        case 1:
            _rs=obj_Fire_Staff_Recipe;
        break;
        case 2:
            _rs=obj_Fire_Dagger_Recipe;
        break;
        case 3:
            _rs=obj_Fire_Scepter_Recipe;
        break;
        case 4:
            _rs=obj_Fire_Axe_Recipe;
        break;
        case 5:
            _rs=obj_Fire_Bow_Recipe;
        break;
        case 6:
            _rs=obj_Ice_Sword_Recipe;
        break;
        case 7:
            _rs=obj_Ice_Dagger_Recipe;
        break;
        case 8:
            _rs=obj_Ice_Staff_Recipe;
        break;
        case 9:
            _rs=obj_Ice_Scepter_Recipe;
        break;
        case 10:
            _rs=obj_Ice_Axe_Recipe;
        break;
        case 11:
            _rs=obj_Ice_Bow_Recipe;
        break;
    }
}
return _rs;
