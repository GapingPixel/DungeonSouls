///Create_Settings_File();
gml_pragma("forceinline");
/*
    Creates and loads the settings file.
*/
ini_open(working_directory+"\configuration"+global.version+".ini"); {
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
        //CONTROLLER
        
        ini_write_real("CONFIG","CUP",JOYSTICK_LSTICK_PUSHED_UP);
        ini_write_real("CONFIG","CDOWN",JOYSTICK_LSTICK_PUSHED_DOWN);
        ini_write_real("CONFIG","CLEFT",JOYSTICK_LSTICK_PUSHED_LEFT);
        ini_write_real("CONFIG","CRIGHT",JOYSTICK_LSTICK_PUSHED_RIGHT);
        ini_write_real("CONFIG","CPOTION",textcode_to_gamepad("DPAD-UP"));
        ini_write_real("CONFIG","CPICK",textcode_to_gamepad("A"));
        ini_write_real("CONFIG","CSTAT",textcode_to_gamepad("Y"));
        ini_write_real("CONFIG","CMAP",textcode_to_gamepad("B"));
        ini_write_real("CONFIG","CINV",gp_select);
        ini_write_real("CONFIG","CFSKILL",textcode_to_gamepad("RB"));
        ini_write_real("CONFIG","CSSKILL",textcode_to_gamepad("LT"));
        ini_write_real("CONFIG","CTSKILL",textcode_to_gamepad("RT"));    
        ini_write_real("CONFIG","CASKILL",textcode_to_gamepad("LB"));
        ini_write_real("CONFIG","CSKILLUP",textcode_to_gamepad("X"));
        
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
        ini_write_real("GAMEPLAY","MAPBACK",0);
        ini_write_real("GAMEPLAY","SMOOTH_CAMERA",true);
        ini_write_real("GAMEPLAY","VERTICAL_SYNC",false);
        ini_write_real("IMG","NUMBER",1);
        ini_write_real("GAME","AAA",1);
        ini_write_real("GAME","BBB",1);
        ini_write_real("GAME","CCC",0);
        ini_write_real("GAME","DDD",0);                        
    }
    ini_close();
    ini_open(working_directory+"\configuration"+global.version+".ini");
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
    
        //CONTROLLER
    ds_map_add(global.ckeys,'left',  Return_CSKey(ini_read_real("CONFIG","CLEFT",     JOYSTICK_LSTICK_PUSHED_LEFT)))
    ds_map_add(global.ckeys,'right', Return_CSKey(ini_read_real("CONFIG","CRIGHT",    JOYSTICK_LSTICK_PUSHED_RIGHT)))
    ds_map_add(global.ckeys,'up',    Return_CSKey(ini_read_real("CONFIG","CUP",       JOYSTICK_LSTICK_PUSHED_UP)))
    ds_map_add(global.ckeys,'down',  Return_CSKey(ini_read_real("CONFIG","CDOWN",     JOYSTICK_LSTICK_PUSHED_DOWN)))
    
    ds_map_add(global.ckeys,'potion',Return_CSKey(ini_read_real("CONFIG","CPOTION",   textcode_to_gamepad("DPAD-UP"))))
    ds_map_add(global.ckeys,'pick',  Return_CSKey(ini_read_real("CONFIG","CPICK",     textcode_to_gamepad("A"))))
    ds_map_add(global.ckeys,'stat',  Return_CSKey(ini_read_real("CONFIG","CSTAT",     textcode_to_gamepad("Y"))))
    ds_map_add(global.ckeys,'map',   Return_CSKey(ini_read_real("CONFIG","CMAP",      textcode_to_gamepad("B"))))
    ds_map_add(global.ckeys,'inv',   Return_CSKey(ini_read_real("CONFIG","CINV",      gp_select)))        
    ds_map_add(global.ckeys,'fskill', Return_CSKey(ini_read_real("CONFIG","CFSKILL",    textcode_to_gamepad("RB"))))
    ds_map_add(global.ckeys,'sskill', Return_CSKey(ini_read_real("CONFIG","CSSKILL",    textcode_to_gamepad("LT"))))
    ds_map_add(global.ckeys,'tskill', Return_CSKey(ini_read_real("CONFIG","CTSKILL",    textcode_to_gamepad("RT"))))  
    ds_map_add(global.ckeys,'askill', Return_CSKey(ini_read_real("CONFIG","CASKILL",    textcode_to_gamepad("LB"))))  
    ds_map_add(global.ckeys,'skillup', Return_CSKey(ini_read_real("CONFIG","CSKILLUP",    textcode_to_gamepad("X"))))
    
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
    global.mapback = ini_read_real("GAMEPLAY","MAPBACK",0);    
    global.smooth_camera = ini_read_real("GAMEPLAY","SMOOTH_CAMERA",true);
    global.vertical_sync = ini_read_real("GAMEPLAY","VERTICAL_SYNC",false);
    global.image_num = ini_read_real("IMG","NUMBER",1);
    global.easy = ini_read_real("GAME","AAA",1);        
    global.normal = ini_read_real("GAME","BBB",1);
    global.nightmare = ini_read_real("GAME","CCC",0);
    global.impossible = ini_read_real("GAME","DDD",0);       
    ini_close();
