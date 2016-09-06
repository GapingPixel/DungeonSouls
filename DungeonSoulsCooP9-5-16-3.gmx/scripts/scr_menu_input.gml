///scr_menu_input
gml_pragma("forceinline");
//Keyboard
up_key[KEYBOARD] = max(keyboard_check(ord("W")),keyboard_check(vk_up));
down_key[KEYBOARD] = max(keyboard_check(ord("S")),keyboard_check(vk_down));
right_key[KEYBOARD] = max(keyboard_check(ord("D")),keyboard_check(vk_down));
left_key[KEYBOARD] = max(keyboard_check(ord("A")),keyboard_check(vk_down));
enter[KEYBOARD] = max(keyboard_check_released(vk_space));
back[KEYBOARD] = max(keyboard_check_released(vk_escape));

//Gamepads
var pad1 = global.pad[GAMEPAD_1];

up_key[GAMEPAD_1] = gamepad_axis_value(pad1, gp_axislv) < 0;
down_key[GAMEPAD_1] = gamepad_axis_value(pad1, gp_axislv) > 0;
right_key[GAMEPAD_1] = gamepad_axis_value(pad1, gp_axislh) > 0;
left_key[GAMEPAD_1] = gamepad_axis_value(pad1, gp_axislh) < 0;

up_key2[GAMEPAD_1] = gamepad_axis_value(pad1, gp_axisrv) < 0;
down_key2[GAMEPAD_1] = gamepad_axis_value(pad1, gp_axisrv) > 0;
right_key2[GAMEPAD_1] = gamepad_axis_value(pad1, gp_axisrh) > 0;
left_key2[GAMEPAD_1] = gamepad_axis_value(pad1, gp_axisrh) < 0;

enter[GAMEPAD_1] = gamepad_button_check_released(pad1, gp_face1);
back[GAMEPAD_1] = gamepad_button_check_released(pad1, gp_face2);

var pad2 = global.pad[1];

up_key[GAMEPAD_2] = gamepad_axis_value(pad2, gp_axislv) < 0;
down_key[GAMEPAD_2] = gamepad_axis_value(pad2, gp_axislv) > 0;
right_key[GAMEPAD_2] = gamepad_axis_value(pad2, gp_axislh) > 0;
left_key[GAMEPAD_2] = gamepad_axis_value(pad2, gp_axislh) < 0;
enter[GAMEPAD_2] = gamepad_button_check_released(pad2, gp_face1);
back[GAMEPAD_2] = gamepad_button_check_released(pad2, gp_face2);

