gml_pragma("forceinline");
global.forge_item_amount=0;
/** DATA STRUCTURE:
global.forge_item_id[0]=0;
global.forge_item_sprite[0]=-1;
global.forge_item_name[0]="N/A";
global.forge_item_type[0]="N/A";
global.forge_item_description[0]="N/A";*/
if (file_exists(ARCANE_FORGE_ITEMS_FILE))
{
    var file = file_text_open_read(ARCANE_FORGE_ITEMS_FILE);
    while (!file_text_eof(file))
    {
        global.forge_item_id[global.forge_item_amount]=file_text_read_real(file);
        file_text_readln(file);
        load_forge_item_id(global.forge_item_id[global.forge_item_amount],global.forge_item_amount);
        /*global.forge_item_name[global.forge_item_amount]=file_text_read_string(file);
        file_text_readln(file);
        global.forge_item_type[global.forge_item_amount]=file_text_read_string(file);
        file_text_readln(file);
        global.forge_item_description[global.forge_item_amount]=file_text_read_string(file);
        file_text_readln(file);*/
        global.forge_item_amount++;
    }
    file_text_close(file);
}
