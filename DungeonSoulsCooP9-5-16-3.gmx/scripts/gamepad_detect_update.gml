/**
    Updates the variables that detects if there are any gamepads connected.
*/
if (gamepad_supported)
{
    var disable_count;
    disable_count=0;
    for (var _i=0;_i<max_gamepad_pads;_i++)
    {
        if (gamepad_is_connected(_i) && gamepad_index[_i]==-1)
        {
            gamepad_set_axis_deadzone(_i, 0.3);       // Set the "deadzone" for the axis
            gamepad_set_button_threshold(_i, 0.1);    // Set the "threshold" for the triggers
            gamepad_insert_index(_i); 
            gamepad_set_axis_deadzone(_i,gamepad_axis_deadzone);
        }
        else if (gamepad_index[_i]!=-1 && !gamepad_is_connected(_i))
        {
            gamepad_remove_index(_i);
        }
        if (gamepad_index[_i]==-1)
        {
            disable_count++;
        }
    }
    gamepad_detected = disable_count!=max_gamepad_pads;
}
