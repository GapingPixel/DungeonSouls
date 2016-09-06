gml_pragma("forceinline");
/**
    In game maker studio, old versions of gamepad controllers that are only supported by InputDirect
    are treated as joysticks. This feature is kept for backwards compatability with older gamepads, although
    it is heavily disencouraged to use older joysticks (since some of their features are not recognized by modern OSs)
    
    joystick_data is a matrix where:
    [i] = index of the joystick
    [i][0] = enabled/disabled (true or false)
    [i][1} = has_pov (has point of view)
    [i][2] = x_pos (x position of the joystick)
    [i][3] = y_pos (y position of the joystick)
    [i][4] = z_pos (z position of the joystick)
    [i][5] = r_pos (r position of the joystick)
    [i][6] = u_pos (u position of the joystick)
    [i][7] = v_pos (v position of the joystick)
    [i][8] = pov_value (point of view value. This is usually the D-Pad.
    [i][9] = direction of the joystick
    
    joystick_button is also a matrix similar to the specified above, but it instead contains
    32 slots for the 32 possible buttons of the joystick, starting at 0 and ending at 31.
    The same applies for joystick_button_pressed and joystick_button_released

    !! WARNING !!
        
    Joysticks are only recognized in windows!!
    
    joystick_stick does the same as joystick_button but it instead
    checks if the left stick was push in a certain direction.
    
    joystick_stick_pushed works like joystick_button_pressed
    // 0 - up
    // 1 - right
    // 2 - down
    // 3 - left
    
    argument0 - The maximum amount of gamepads (windows and mac support up to 4).
*/
globalvar gamepad_rstick_pressed,gamepad_rstick_state,gamepad_lstick_pressed,gamepad_lstick_state,gamepad_axis_deadzone,
    gamepad_supported,joystick_stick,joystick_stick_pressed,joystick_button,joystick_button_pressed,joystick_button_released,
    joystick_data,joystick_data_dpad_last,joystick_dpad_pressed,gamepad_index,max_joystick_data,max_gamepad_pads,gamepad_detected,joystick_detected;

gamepad_supported=gamepad_is_supported();
gamepad_detected=false;
joystick_detected=false;
gamepad_axis_deadzone = 0.4;
max_gamepad_pads = argument0;

if (!gamepad_supported)
{
    show_debug_message("OS does not support gamepads!");
}

for (var i=0;i<max_gamepad_pads;i++)
{
    gamepad_index[i]=-1;
    for (var j=0;j<4;j++)
    {
        gamepad_lstick_state[i,j]=0;
        gamepad_lstick_pressed[i,j]=0;
        gamepad_rstick_state[i,j]=0;
        gamepad_rstick_pressed[i,j]=0;
    }
}

max_joystick_data=10;
for (var i=0;i<2;i++) // There are only 2 joysticks slots allowed in game maker studio.
{
    for (var j=0;j<max_joystick_data;j++)
    {
        joystick_data[i,j]=0;
    }
    for (var j=0;j<32;j++)
    {
        joystick_button[i,j]=0;
        joystick_button_pressed[i,j]=0;
        joystick_button_released[i,j]=0;
    }
    for (var j=0;j<8;j++)
    {
        joystick_stick[i,j]=false;
        joystick_stick_pressed[i,j]=false;
    }
    for (var j=0;j<4;j++)
    {
        joystick_data_dpad_last[j]=-1;
        joystick_dpad_pressed[i,j]=false;
    }
}
