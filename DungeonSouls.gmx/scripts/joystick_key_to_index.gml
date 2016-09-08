///joystick_key_to_index(string keycode)
var result;
var code = argument0;
switch (code)
{
    /*case JOYSTICK_RSTICK_PUSHED_UP:
        result="RS-UP";
    break;
    case JOYSTICK_RSTICK_PUSHED_DOWN:
        result="RS-DOWN";
    break;
    case JOYSTICK_RSTICK_PUSHED_LEFT:
        result="RS-LEFT";
    break;
    case JOYSTICK_RSTICK_PUSHED_RIGHT:
        result="RS-RIGHT";
    break;
    case JOYSTICK_LSTICK_PUSHED_UP:
        result="LS-UP";
    break;
    case JOYSTICK_LSTICK_PUSHED_DOWN:
        result="LS-DOWN";
    break;
    case JOYSTICK_LSTICK_PUSHED_LEFT:
        result="LS-LEFT";
    break;
    case JOYSTICK_LSTICK_PUSHED_RIGHT:
        result="LS-RIGHT";
    break;
    
    
    case JOYSTICK_DPAD_UP:
        result="DPAD-UP";
    break;
    case JOYSTICK_DPAD_DOWN:
        result="DPAD-DOWN";
    break;
    case JOYSTICK_DPAD_LEFT:
        result="DPAD-LEFT";
    break;
    case JOYSTICK_DPAD_RIGHT:
        result="DPAD-RIGHT";
    break;*/
    case "X":
        result = 0;
    break;
    case "A":
        result = 1;
    break;
    case "B":
        result = 2;
    break;
    case "Y":
        result = 3;
    break;
    case "LB":
        result = 4;
    break;
    case "RB":
        result = 5;
    break;
    case "LT":
        result = 6;
    break;
    case "RT":
        result = 7;
    break;
    case "SELECT":
        result = 8;
    break;
    
    case "START":
        result = 9;
    break;
    
    case "LS":
        result = 10;
    break;
    
    case "RS":
        result=11;
    break;
    
    default:
        result=-1;
    break;
}
return result;
