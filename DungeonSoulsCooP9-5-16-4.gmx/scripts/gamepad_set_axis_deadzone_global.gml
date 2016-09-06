/**
    Sets the axis deadzone for all gamepads.
    argument0 - The new value of the axis deadzone.
*/
gamepad_axis_deadzone=argument0;
for (var _i=0;_i<max_gamepad_pads;_i++)
{
    var pad;
    pad = gamepad_get_index(_i);
    if (pad!=-1)
    {
        gamepad_set_axis_deadzone(pad,gamepad_axis_deadzone);
    }
}
