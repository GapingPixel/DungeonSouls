///translate_joystick_key(int keycode)
var result="";
var code = argument0;
switch (code)
{
    case JOYSTICK_RSTICK_PUSHED_UP:
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
    break;
    case 12:
        result = "X";
    break;
    case 13:
        result = "A";
    break;
    case 14:
        result = "B";
    break;
    case 15:
        result = "Y";
    break;
    case 16:
        result = "LB";
    break;
    case 17:
        result = "RB";
    break;
    case 18:
        result = "LT";
    break;
    case 19:
        result = "RT";
    break;
    case 20:
        result = "SELECT";
    break;
    case 21:
        result = "START";
    break;
    case 22:
        result = "LS";
    break;
    case 23:
        result = "RS";
    break;
    
    default:
        result="UNDEFINED";
    break;
}
return result;
