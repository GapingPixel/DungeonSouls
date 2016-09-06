///gamepad_get_last_update()
/*
    Returns the amount of time (in steps) passed since the last update of the gamepad's state.
    This means that, for example,
    if the gamepad wasn't detected and it is now detected, the last_update_time will be 0.
*/
return gamepad_last_update;
