/**
    Removes a gamepad connection of the list of available gamepads.
    argument0 - The index of gamepad to remove.
*/
for (var i=0;i<max_gamepad_pads;i++)
{
    if (gamepad_index[i]==argument0)
    {
        gamepad_index[i]=-1;
        break;
    }
}
