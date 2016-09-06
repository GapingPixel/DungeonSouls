gml_pragma("forceinline");
if(file_exists(working_directory+"\configuration"+global.version+".ini")) then file_delete(working_directory+"\configuration"+global.version+".ini");

/////////////////////////////////////SAVE
    ini_open(working_directory+"\configuration"+global.version+".ini");
    ini_write_real("CONFIG","UP",ds_map_find_value(global.keys,'up'));
    ini_write_real("CONFIG","DOWN",ds_map_find_value(global.keys,'down'));
    ini_write_real("CONFIG","LEFT",ds_map_find_value(global.keys,'left'));        
    ini_write_real("CONFIG","RIGHT",ds_map_find_value(global.keys,'right'));
    ini_write_real("CONFIG","POTION",ds_map_find_value(global.keys,'potion'));
    ini_write_real("CONFIG","PICK",ds_map_find_value(global.keys,'pick'));
    ini_write_real("CONFIG","STAT",ds_map_find_value(global.keys,'stat'));
    ini_write_real("CONFIG","MAP",ds_map_find_value(global.keys,'map'));
    ini_write_real("CONFIG","INV",ds_map_find_value(global.keys,'inv'));
    ini_write_real("CONFIG","SSKILL",ds_map_find_value(global.keys,'sskill'));    
    ini_write_real("CONFIG","TSKILL",ds_map_find_value(global.keys,'tskill'));
    
    //CONTROLLER
    ini_write_real("CONFIG","CUP",ds_map_find_value(global.ckeys,'up'));
    ini_write_real("CONFIG","CDOWN",ds_map_find_value(global.ckeys,'down'));
    ini_write_real("CONFIG","CLEFT",ds_map_find_value(global.ckeys,'left'));        
    ini_write_real("CONFIG","CRIGHT",ds_map_find_value(global.ckeys,'right'));
    ini_write_real("CONFIG","CPOTION",ds_map_find_value(global.ckeys,'potion'));
    ini_write_real("CONFIG","CPICK",ds_map_find_value(global.ckeys,'pick'));
    ini_write_real("CONFIG","CSTAT",ds_map_find_value(global.ckeys,'stat'));
    ini_write_real("CONFIG","CMAP",ds_map_find_value(global.ckeys,'map'));
    ini_write_real("CONFIG","CINV",ds_map_find_value(global.ckeys,'inv'));
    ini_write_real("CONFIG","CFSKILL",ds_map_find_value(global.ckeys,'fskill'));
    ini_write_real("CONFIG","CSSKILL",ds_map_find_value(global.ckeys,'sskill'));
    ini_write_real("CONFIG","CTSKILL",ds_map_find_value(global.ckeys,'tskill'));
    ini_write_real("CONFIG","CASKILL",ds_map_find_value(global.ckeys,'askill'));
    ini_write_real("CONFIG","CSKILLUP",ds_map_find_value(global.ckeys,'skillup'));
    
    ini_write_real("CONFIG","MUTE",global.mute);   
    ini_write_real("CONFIG","SFX",global.sfx_vol);
    ini_write_real("CONFIG","MSC",global.msc_vol);    
    ini_write_real("SCREEN","SIZE",global.screen_size);
    ini_write_real("SCREEN","FULLSCREEN",global.full_screen);
    ini_write_real("SCREEN","LOCKCAM",global.lock_camera);
    ini_write_real("GAMEPLAY","SHAKE",global.screen_shake);
    ini_write_real("GAMEPLAY","FLASH",global.flash);      
    ini_write_real("GAMEPLAY","AUTOCAST",global.autocast);      
    ini_write_real("GAMEPLAY","AUTOPICK",global.autopick);
    ini_write_real("GAMEPLAY","GLOW",global.glow);
    ini_write_real("GAMEPLAY","HPBAR",global.hpbar);
    ini_write_real("GAMEPLAY","MAPBACK",global.mapback)
    ini_write_real("GAMEPLAY","SMOOTH_CAMERA",global.smooth_camera);
    ini_write_real("GAMEPLAY","VERTICAL_SYNC",global.vertical_sync);
    ini_write_real("IMG","NUMBER",global.image_num);        
    ini_write_real("GAME","AAA",global.easy);
    ini_write_real("GAME","BBB",global.normal);
    ini_write_real("GAME","CCC",global.nightmare);
    ini_write_real("GAME","DDD",global.impossible);    
    
    ini_write_real("CONFIG","HARD_RESET",hardReset);
    ini_write_real("GAME","ARCANE_RESET",arcaneReset);
ini_close();
