gml_pragma("forceinline");
global.recipe[0]=-1;
global.number_recipes=0;
if (file_exists(ARCANE_FORGE_RECIPES_FILE))
{
    var file = file_text_open_read(ARCANE_FORGE_RECIPES_FILE);
        while (!file_text_eof(file))    
        {
            global.recipe[global.number_recipes++]=file_text_read_real(file);
            file_text_readln(file);
        }
    file_text_close(file);
}
