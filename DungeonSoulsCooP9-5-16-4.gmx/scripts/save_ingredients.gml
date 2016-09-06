gml_pragma("forceinline");
if (file_exists(ARCANE_FORGE_INGREDIENTS_FILE))
{
    file_delete(ARCANE_FORGE_INGREDIENTS_FILE);
}
var file = file_text_open_write(ARCANE_FORGE_INGREDIENTS_FILE);
//for (var it=0;it<global.ingredients_amount;it++)
for (var it=global.ingredients_amount-1;it>=0;it--)
{
    file_text_write_real(file,global.ingredient_type[it]);
    file_text_writeln(file);
    file_text_write_real(file,global.ingredient_count[it]);
    file_text_writeln(file);
}
file_text_close(file);
