gml_pragma("forceinline");
if (file_exists(ARCANE_FORGE_ITEMS_FILE))
{
    file_delete(ARCANE_FORGE_ITEMS_FILE);
}
var file = file_text_open_write(ARCANE_FORGE_ITEMS_FILE);
//for (var it=0;it<global.forge_item_amount;it++)
for (var it=global.forge_item_amount-1;it>=0;it--)
{
    file_text_write_real(file,global.forge_item_id[it]);
    file_text_writeln(file);
}
file_text_close(file);
