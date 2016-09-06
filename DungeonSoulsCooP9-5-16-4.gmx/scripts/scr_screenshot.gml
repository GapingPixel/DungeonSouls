gml_pragma("forceinline");
if (keyboard_check_pressed(vk_f12)) {
   screen_save(working_directory + "\Screens\Screen_"+string(global.screen_num)+".png");
   global.screen_num++; 
   //Save Ini
   ini_open("save.ini");
   ini_write_real("DATA","SCREENSHOT_NUMBER",global.screen_num);
   ini_close();
}


