///loadBackUpData(String file)
/*
    Loads the contents in a backup file.
    Return - Whether the back up was successfully loaded or not
*/
var _f=working_directory+argument0;
var _success=true;
if (file_exists(_f))
{
    logger_write("Loading backup data from "+string(_f));
    var file;
    file = file_text_open_read(_f); 
    global.soul_orb         = file_text_read_real(file);file_text_readln(file);
    global.emerald          = file_text_read_real(file);file_text_readln(file);
    global.total_coins      = file_text_read_real(file);file_text_readln(file);
    global.en_kills         = file_text_read_real(file);file_text_readln(file);
    global.deaths           = file_text_read_real(file);file_text_readln(file);
    global.item_get         = file_text_read_real(file);file_text_readln(file);
    global.all_coin         = file_text_read_real(file);file_text_readln(file);
    global.boss_kill        = file_text_read_real(file);file_text_readln(file);
    global.highest_level    = file_text_read_string(file);file_text_readln(file);
    global.highest_levelB   = file_text_read_real(file);file_text_readln(file);        
    global.highest_loop     = file_text_read_real(file);file_text_readln(file);
    global.mpc              = file_text_read_real(file);file_text_readln(file); 
    
    
    for(a=0;a<10;a++)
    {
        rank[a] = file_text_read_real(file);file_text_readln(file);
        global.rank_cur_point[a] = file_text_read_real(file);file_text_readln(file);        
        unlocked[a] = file_text_read_real(file);file_text_readln(file);        
    }
    
    //PASSIVE
    global.passive[0] = file_text_read_real(file);file_text_readln(file);//MAXHP
    global.passive[1] = file_text_read_real(file);file_text_readln(file);//DAMAGE
    global.passive[2] = file_text_read_real(file);file_text_readln(file);//REGEN
    global.passive[3] = file_text_read_real(file);file_text_readln(file);//CRIT
    global.passive[4] = file_text_read_real(file);file_text_readln(file);//DEFENSE
    global.passive[5] = file_text_read_real(file);file_text_readln(file);//SPEED
    global.passive[6] = file_text_read_real(file);file_text_readln(file);//INTELLIGENCE
    global.passive[7] = file_text_read_real(file);file_text_readln(file);//PURITY
    global.passive[8] = file_text_read_real(file);file_text_readln(file);//GREED
    
    file_text_close(file);
}
else
{
    logger_write("BackUp Load failed: "+string(argument0)+" does not exist");
    _success=false;
}
return _success;
