gml_pragma("forceinline");
if (file_exists(ARCANE_FORGE_RECIPES_FILE))
{
    file_delete(ARCANE_FORGE_RECIPES_FILE);
}
var file = file_text_open_write(ARCANE_FORGE_RECIPES_FILE);
//for (var it=0;it<global.number_recipes;it++)
for (var it=global.number_recipes-1;it>=0;it--)
{
    file_text_write_real(file,global.recipe[it]);
    file_text_writeln(file);
}
file_text_close(file);
