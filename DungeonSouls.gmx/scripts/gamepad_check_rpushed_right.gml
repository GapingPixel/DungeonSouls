/**
    Checks if the right stick of a gamepad has been pushed in a direction, much like keyboard_check_pressed
    argument0 - The gamepad index.
*/
return gamepad_rstick_pressed[argument0,1];
//scr_menu_input();
/*right_key2[GAMEPAD_1] = gamepad_axis_value(pad1, gp_axisrh) > 0;
return false;
if right_key2 { 
   return true;
} 
