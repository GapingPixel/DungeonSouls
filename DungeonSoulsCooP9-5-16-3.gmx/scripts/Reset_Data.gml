gml_pragma("forceinline");
if file_exists(working_directory + "dungeonsouls.ds")
    file_delete(working_directory + "dungeonsouls.ds");
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
    
    for(a=0;a<8;a+=1)
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
    
    var file;
    file = file_text_open_write(working_directory + "\dungeonsouls.ds");
    file_text_write_real(file, global.soul_orb); file_text_writeln(file);
    file_text_write_real(file, global.emerald); file_text_writeln(file);
    file_text_write_real(file, global.total_coins); file_text_writeln(file);
    file_text_write_real(file, global.en_kills); file_text_writeln(file);
    file_text_write_real(file, global.deaths); file_text_writeln(file);
    file_text_write_real(file, global.item_get); file_text_writeln(file);
    file_text_write_real(file, global.all_coin); file_text_writeln(file);
    file_text_write_real(file, global.boss_kill); file_text_writeln(file);
    file_text_write_string(file, global.highest_level); file_text_writeln(file);
    file_text_write_real(file, global.highest_levelB); file_text_writeln(file);
    file_text_write_real(file, global.highest_loop); file_text_writeln(file);
    file_text_write_real(file, global.mpc); file_text_writeln(file);
    //rank
    for(a=0;a<8;a+=1)
    {
        file_text_write_real(file, rank[a]); file_text_writeln(file);
        file_text_write_real(file, global.rank_cur_point[a]); file_text_writeln(file);    
        file_text_write_real(file, unlocked[a]); file_text_writeln(file);
    }
    //PASSIVE
    file_text_write_real(file, global.passive[0]); file_text_writeln(file);
    file_text_write_real(file, global.passive[1]); file_text_writeln(file);
    file_text_write_real(file, global.passive[2]); file_text_writeln(file);
    file_text_write_real(file, global.passive[3]); file_text_writeln(file);
    file_text_write_real(file, global.passive[4]); file_text_writeln(file);
    file_text_write_real(file, global.passive[5]); file_text_writeln(file);
    file_text_write_real(file, global.passive[6]); file_text_writeln(file);
    file_text_write_real(file, global.passive[7]); file_text_writeln(file);
    file_text_write_real(file, global.passive[8]); file_text_writeln(file);
    file_text_close(file);
    
if file_exists(working_directory + "\configuration.ini")
    file_delete(working_directory + "\configuration.ini");    
    //CONFIGURATION
    ini_open(working_directory+"\configuration.ini");
    {
        ini_write_real("CONFIG","UP",       ord("W"));
        ini_write_real("CONFIG","DOWN",     ord("S"));
        ini_write_real("CONFIG","LEFT",     ord("A"));
        ini_write_real("CONFIG","RIGHT",    ord("D"));
        ini_write_real("CONFIG","POTION",   ord("F"));
        ini_write_real("CONFIG","PICK",     vk_space);
        ini_write_real("CONFIG","STAT",     vk_tab);
        ini_write_real("CONFIG","MAP",      ord("M"));
        ini_write_real("CONFIG","INV",      ord("C"));
        ini_write_real("CONFIG","SSKILL",    ord("Q"));
        ini_write_real("CONFIG","TSKILL",    ord("E"));        
        ini_write_real("CONFIG","MUTE",false);   
        ini_write_real("CONFIG","SFX",100);
        ini_write_real("CONFIG","MSC",100);                    
        ini_write_real("SCREEN","SIZE",5);
        ini_write_real("SCREEN","FULLSCREEN",true);
        ini_write_real("SCREEN","LOCKCAM",false);  
        ini_write_real("GAMEPLAY","SHAKE",true);                      
        ini_write_real("GAMEPLAY","FLASH",true);        
        ini_write_real("GAMEPLAY","AUTOCAST",false);        
        ini_write_real("GAMEPLAY","AUTOPICK",false);        
        ini_write_real("GAMEPLAY","GLOW",true);
        ini_write_real("GAMEPLAY","HPBAR",true);
        ini_write_real("IMG","NUMBER",1);
        ini_write_real("GAME","AAA",1);
        ini_write_real("GAME","BBB",1);
        ini_write_real("GAME","CCC",0);
        ini_write_real("GAME","DDD",0);
    }
    ds_map_add(global.keys,'left',  Return_VSKey(ini_read_real("CONFIG","LEFT",     ord("A"))))
    ds_map_add(global.keys,'right', Return_VSKey(ini_read_real("CONFIG","RIGHT",    ord("D"))))
    ds_map_add(global.keys,'up',    Return_VSKey(ini_read_real("CONFIG","UP",       ord("W"))))
    ds_map_add(global.keys,'down',  Return_VSKey(ini_read_real("CONFIG","DOWN",     ord("S"))))
    ds_map_add(global.keys,'potion',Return_VSKey(ini_read_real("CONFIG","POTION",   ord("F"))))
    ds_map_add(global.keys,'pick',  Return_VSKey(ini_read_real("CONFIG","PICK",     vk_space)))
    ds_map_add(global.keys,'stat',  Return_VSKey(ini_read_real("CONFIG","STAT",     vk_tab)))
    ds_map_add(global.keys,'map',   Return_VSKey(ini_read_real("CONFIG","MAP",      ord("M"))))
    ds_map_add(global.keys,'inv',   Return_VSKey(ini_read_real("CONFIG","INV",      ord("C"))))        
    ds_map_add(global.keys,'sskill', Return_VSKey(ini_read_real("CONFIG","SSKILL",    ord("Q"))))
    ds_map_add(global.keys,'tskill', Return_VSKey(ini_read_real("CONFIG","TSKILL",    ord("E"))))        
    global.mute = ini_read_real("CONFIG","MUTE",false);    
    global.sfx_vol = ini_read_real("CONFIG","SFX",100);
    global.msc_vol = ini_read_real("CONFIG","MSC",100);    
    global.screen_size = ini_read_real("SCREEN","SIZE",5);
    global.full_screen = ini_read_real("SCREEN","FULLSCREEN",true);
    global.lock_camera = ini_read_real("SCREEN","LOCKCAM",false);
    global.screen_shake = ini_read_real("GAMEPLAY","SHAKE",true);
    global.flash = ini_read_real("GAMEPLAY","FLASH",true); 
    global.autocast = ini_read_real("GAMEPLAY","AUTOCAST",false);   
    global.autopick = ini_read_real("GAMEPLAY","AUTOPICK",false);   
    global.glow = ini_read_real("GAMEPLAY","GLOW",true);
    global.hpbar = ini_read_real("GAMEPLAY","HPBAR",true);
    global.image_num = ini_read_real("IMG","NUMBER",1);
    global.easy = ini_read_real("GAME","AAA",1);
    global.normal = ini_read_real("GAME","BBB",1);
    global.nightmare = ini_read_real("GAME","CCC",0);
    global.impossible = ini_read_real("GAME","DDD",0);                   
    ini_close();        
if (file_exists(ARCANE_FORGE_RECIPES_FILE))
{
    file_delete(ARCANE_FORGE_RECIPES_FILE);
}
if (file_exists(ARCANE_FORGE_ITEMS_FILE))
{
    file_delete(ARCANE_FORGE_ITEMS_FILE);
}
if (file_exists(ARCANE_FORGE_FILE))
{
    file_delete(ARCANE_FORGE_FILE);
}
if (file_exists(ARCANE_FORGE_INGREDIENTS_FILE))
{
    file_delete(ARCANE_FORGE_INGREDIENTS_FILE);
}
