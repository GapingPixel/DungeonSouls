///display_ingame_message(x,y,message,time_display,clear_all,target)
/*
    Displays a message in-game on the point x,y for the specified time_display (in seconds);
    The clear_all argument tells whether to eliminate all messages being shown or not.
    The target argument specifies which object it should be following. -1 for none
    Return - The id of the message created.
*/
if (argument4)
{
    if (instance_exists(obj_ingame_message))
    {
        with (obj_ingame_message)
        {
            if (target==argument5)
            {
                instance_destroy();
            }
        }
    }
}
_o = instance_create(argument0,argument1,obj_ingame_message);
_o.message=argument2;
_o.wait_time=argument3;
_o.target=argument5;
return _o;
