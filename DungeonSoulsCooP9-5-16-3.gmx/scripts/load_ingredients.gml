global.ingredients_amount=0;
/** 
    FILE STRUCTURE:
    INGREDIENT_TYPE
    INGREDIENT_AMOUNT

    DATA STRUCTURE:
global.ingredient_type[0]=-1;
global.ingredient_name[0]="N/A";
global.ingredient_description[0]="N/A";
global.ingredient_count[0]=-1;*/
if (file_exists(ARCANE_FORGE_INGREDIENTS_FILE))
{
    var file = file_text_open_read(ARCANE_FORGE_INGREDIENTS_FILE);
    while (!file_text_eof(file))
    {
        global.ingredient_type[global.ingredients_amount]=file_text_read_real(file);
        file_text_readln(file);
        global.ingredient_name[global.ingredients_amount]=
            get_ingredient_name(global.ingredient_type[global.ingredients_amount]);
        global.ingredient_description[global.ingredients_amount]=
            get_ingredient_description(global.ingredient_type[global.ingredients_amount]);
        global.ingredient_count[global.ingredients_amount]=file_text_read_real(file);
        file_text_readln(file);
        global.ingredients_amount++;
    }
    file_text_close(file);
}
