///display_message(x,y,message,time_display,clear_all)
/*
    Displays a message on the point x,y for the specified time_display (in seconds);
    The clear_all argument tells whether to eliminate all messages being shown or not.
*/
if (argument4)
{
    if (instance_exists(obj_message))
    {
        with (obj_message)
        {
            instance_destroy();
        }
    }
}
_o = instance_create(argument0,argument1,obj_message);
_o.message=argument2;
_o.wait_time=argument3;
