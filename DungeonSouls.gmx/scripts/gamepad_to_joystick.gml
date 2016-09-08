///gamepad_to_joystick(int gamepad_code)
/*
    Converts a gamepad code into a joystick index.
*/
var result;
var code = argument0;
switch (code)
{
    case gp_face1:
        result=1;
    break;
    case gp_face2:
        result=2;
    break;
    case gp_face3:
        result=0;
    break;
    case gp_face4:
        result=3;
    break;
    case gp_shoulderl:
        result=4;
    break;
    case gp_shoulderr:
        result=5;
    break;
    case gp_shoulderlb:
        result=6;
    break;
    case gp_shoulderrb:
        result=7;
    break;
    case gp_select:
        result=8;
    break;
    case gp_start:
        result=9;
    break;
    case gp_stickl:
        result = 10;
    break;
    case gp_stickr:
        result=11;
    break;
    default:
        result=-1;
        break;
}
return result;
