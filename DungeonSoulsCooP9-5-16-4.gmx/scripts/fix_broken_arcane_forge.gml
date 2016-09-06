gml_pragma("forceinline");
ini_open(working_directory+"\configuration"+global.version+".ini");
arcaneReset=ini_read_real("GAME","ARCANE_RESET",0);
if (!arcaneReset)
{
    show_message("This patch fixes a problem with the old arcane forge's indexing. "+
    "Your items and weapons will be wiped. We're sorry for any inconvenience!");
    if (file_exists(ARCANE_FORGE_ITEMS_FILE))
    {
        file_delete(ARCANE_FORGE_ITEMS_FILE);
    }
    if (file_exists(ARCANE_FORGE_FILE))
    {
        file_delete(ARCANE_FORGE_FILE);
    }
    arcaneReset=true;
    ini_write_real("GAME","ARCANE_RESET",arcaneReset);
}
ini_close();
