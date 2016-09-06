/**
    This script listens for any joined joysticks. Should not be called regularly as it
    consumes a bit of the computer's processing power to determine if a joystick has been
    connected.
    
    Must call init_gamepad_joystick() first.
*/
var disable_count; //Counts the number of joysticks slots that are not in use
disable_count=0;
for (var _i=0;_i<2;_i++) // The oddly named variable _i makes sure it won't override any other code,
//Since it is unusual for someone to use _i instead of i
{
    if (joystick_exists(_i+1) && !joystick_data[_i,0])
    {
        joystick_data[_i,0]=true;
        joystick_data[_i,1]=joystick_has_pov(_i+1);
        show_debug_message("Joystick connected.");
        if (!joystick_data[_i,1])
        {
            show_debug_message("WARNING: Joystick does not have point of view. Potions might not work correctly.");
        }
        if (joystick_axes(_i+1)<4) //In case the controller is so outdated that it does not have
        //The necessary axes to work with the game, the console warns. 
        {
            show_debug_message("WARNING: Connected joystick appears have less than 4 axes."+
            " The game might not work correctly.");
        }
        gamepad_last_update=0;
    }
    else if (joystick_data[_i,0] && !joystick_exists(_i+1))
    {
        show_debug_message("Joystick disconnected.");
        gamepad_last_update=0;
        joystick_data[_i,0]=false;
        joystick_data[_i,1]=false;
    }
    if (!joystick_data[_i,0])
    {
        disable_count++;
    }
}
joystick_detected=disable_count!=2;
