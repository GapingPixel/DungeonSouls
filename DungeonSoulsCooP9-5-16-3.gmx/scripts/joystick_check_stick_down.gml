/**
    Checks if the joystick's left stick is pointing downwards.
    argument0 = Index of the joystick (0 or 1);
*/
var pad_dir = joystick_data[argument0,9];
return pad_dir==vk_numpad2 || pad_dir==vk_numpad1 || pad_dir==vk_numpad3;
