///Return_ContKey()
//returns string
///Return_CSKey()
//returns string
if argument0 == gp_face1 return "A";
else if argument0 == gp_face2 return "B";
else if argument0 == gp_face3 return "X";
else if argument0 == gp_face4 return "Y";
else if argument0 == gp_shoulderl return "LB";
else if argument0 == gp_shoulderr return "RB";
else if argument0 == gp_shoulderlb return "LT";
else if argument0 == gp_shoulderrb return "RT";
else if argument0 == gp_select return "SELECT";
else if argument0 == gp_start return "START";
else if argument0 == gp_stickl return "LS";
else if argument0 == gp_stickr return "RS";
else if argument0 == gp_padu return "DPAD-UP";
else if argument0 == gp_padd return "DPAD-DOWN";
else if argument0 == gp_padl return "DPAD-LEFT";
else if argument0 == gp_padr return "DPAD-RIGHT";
else if argument0 == JOYSTICK_LSTICK_PUSHED_UP return "LS-UP";
else if argument0 == JOYSTICK_LSTICK_PUSHED_DOWN return "LS-DOWN";
else if argument0 == JOYSTICK_LSTICK_PUSHED_LEFT return "LS-LEFT";
else if argument0 == JOYSTICK_LSTICK_PUSHED_RIGHT return "LS-RIGHT";
else if argument0 == JOYSTICK_DPAD_RIGHT return "DPAD-RIGHT";
else if argument0 == JOYSTICK_DPAD_LEFT return "DPAD-LEFT";
else if argument0 == JOYSTICK_DPAD_DOWN return "DPAD-DOWN";
else if argument0 == JOYSTICK_DPAD_UP return "DPAD-UP";
else if argument0 == gp_axisrh return "AX RH";
else if argument0 == gp_axisrv return "AX RV";
else return "";
