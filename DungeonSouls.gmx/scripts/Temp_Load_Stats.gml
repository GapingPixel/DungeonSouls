gml_pragma("forceinline");
if (file_exists(working_directory + "dungeonsouls.ds"))
{
    if (!checkStatsIntegrity("dungeonsouls.ds",45))
    {
        var trial = loadBackUpData(backup_file_name);
        if (trial)
        {
            Save_Stats();
            show_message("Dungeon Souls has detected that the save file is corrupted and has replaced it with the backup file."+
            " Some data might have been lost");
        }
        else
        {
            show_message("Dungeon souls has detected that the save file is corrupted. However, no backup file seems to be"
            +" present. As a result, some of the game's data may have been reset.");
        }
    }
    var file;
    file = file_text_open_read(working_directory + "dungeonsouls.ds"); 
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
    //STATS
    global.soul_orb     = 0;
    global.emerald      = 0;    
    global.total_coins  = 0;
    global.en_kills     = 0;
    global.deaths       = 0;
    global.item_get     = 0;
    global.all_coin     = 0;
    global.boss_kill    = 0;
    global.highest_level= "";
    global.highest_levelB= 0;    
    global.highest_loop = 0;
    global.mpc          = 0;
    
    global.screen_shake = true;
    global.flash   = true;
    
    for(a=0;a<10;a++)
    {
        rank[a] = 0;
        global.rank_cur_point[a] = 0;        
        unlocked[a] = 0;
    }  
    unlocked[0] = 1
    unlocked[1] = 1
    unlocked[2] = 1
    
    //PASSIVE
    global.passive[0] = 0;
    global.passive[1] = 0;
    global.passive[2] = 0;
    global.passive[3] = 0;
    global.passive[4] = 0;
    global.passive[5] = 0;
    global.passive[6] = 0;
    global.passive[7] = 0;
    global.passive[8] = 0;            
    
}
