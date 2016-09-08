gml_pragma("forceinline");
CheckBindingsIntegrity();
if(file_exists(working_directory+"\configuration"+global.version+".ini"))
{
    //TEMPORARY: Force to use factory default layouts by checking if hard reset was performed
    ini_open(working_directory+"\configuration"+global.version+".ini")  
    hardReset=ini_read_real("CONFIG","HARD_RESET",0);
    arcaneReset=ini_read_real("GAME","ARCANE_RESET",0);
    fixedBackupMechanism=ini_read_real("CONFIG","BACKUP_FIX",0);
    global.screen_num = ini_read_real("DATA","SCREENSHOT_NUMBER",1);//Screenshot 
    if (!fixedBackupMechanism)
    {
        fix_backup(backup_file_name);
        fixedBackupMechanism=true;
        ini_write_real("CONFIG","BACKUP_FIX",1);
    }
    ini_close();
    if (!hardReset)
    {
        Create_Settings_File();
        hardReset=true;
    }
    else
    {
        ini_open(working_directory+"\configuration"+global.version+".ini")  
        { 
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
            ds_map_add(global.ckeys,'sskill', Return_CSKey(ini_read_real("CONFIG","CSSKILL",    textcode_to_gamepad("LT"))))
            ds_map_add(global.ckeys,'tskill', Return_CSKey(ini_read_real("CONFIG","CTSKILL",    textcode_to_gamepad("RT"))))        
            
            ds_map_add(global.ckeys,'fskill', Return_CSKey(ini_read_real("CONFIG","CFSKILL",    textcode_to_gamepad("RB"))))
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
        }
        ini_close();
    }
}else
{
    Create_Settings_File();
}

/*
global.screen_size = 5;
global.full_screen = true;
global.lock_camera = false;
window_set_fullscreen(true);
window_set_size(1366,768)

ds_map_add(global.keys,'left',ord("A"))
ds_map_add(global.keys,'right',ord("D"))
ds_map_add(global.keys,'up',ord("W"))
ds_map_add(global.keys,'down',ord("S"))
ds_map_add(global.keys,'potion',ord("Q"))
ds_map_add(global.keys,'stat',ord("E"))
ds_map_add(global.keys,'map',ord("M"))
ds_map_add(global.keys,'pick',vk_space)
*/
