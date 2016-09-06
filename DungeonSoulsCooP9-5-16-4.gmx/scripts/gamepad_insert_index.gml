/**
    Inserts a new gamepad connection onto the list of available gamepads.
    argument0 - The index of the newly connected gamepad.
*/
for (var i=0;i<max_gamepad_pads;i++)
{
    if (gamepad_index[i]==-1)
    {
        gamepad_index[i]=argument0;
        break;
    }
}
