/*
    Checks if any key was pressed, and returns the first corresponding key found.
    argument0 - The joystick index (either 0 or 1).
    
    Regarding joystick buttons, they come with an offset of 12, meaning that 
    if joystick button number 0 is pressed, joystick_anykey will return 12 (12+0).
      
    Return - The constant representing the joystick key pressed. Returns -1 if no keys were pressed.
*/
var result=-1;
var joy_id = argument0;
var len = joystick_buttons(joy_id);

if (joystick_check_rstick_pushed_up(joy_id))
{
    result = JOYSTICK_RSTICK_PUSHED_UP;
}
else if (joystick_check_rstick_pushed_right(joy_id))
{
    result = JOYSTICK_RSTICK_PUSHED_RIGHT;
}
else if (joystick_check_rstick_pushed_down(joy_id))
{
    result = JOYSTICK_RSTICK_PUSHED_DOWN;
}
else if (joystick_check_rstick_pushed_left(joy_id))
{
    result = JOYSTICK_RSTICK_PUSHED_LEFT;
}
else if (joystick_check_stick_pushed_up(joy_id))
{
    result = JOYSTICK_LSTICK_PUSHED_UP;
}
else if (joystick_check_stick_pushed_right(joy_id))
{
    result = JOYSTICK_LSTICK_PUSHED_RIGHT;
}
else if (joystick_check_stick_pushed_down(joy_id))
{
    result = JOYSTICK_LSTICK_PUSHED_DOWN;
}
else if (joystick_check_stick_pushed_left(joy_id))
{
    result = JOYSTICK_LSTICK_PUSHED_LEFT;
}
else if (joystick_data[joy_id,8]==0)
{
    result = JOYSTICK_DPAD_UP;
}
else if (joystick_data[joy_id,8]==90)
{
    result = JOYSTICK_DPAD_RIGHT;
}
else if (joystick_data[joy_id,8]==180)
{
    result = JOYSTICK_DPAD_DOWN;
}
else if (joystick_data[joy_id,8]==270)
{
    result = JOYSTICK_DPAD_LEFT;
}
else
{
    for (var _i=0;_i<len && result==-1;_i++)
    {
        if (joystick_button_pressed[joy_id,_i])
        {
            result=12+_i;
        }
    }
}

return result;
